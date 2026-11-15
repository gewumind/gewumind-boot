package com.gewumind.app.voice;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.configuration.KernelMessages;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * AI 会话检索 —— 按标题与消息内容检索当前登录用户的会话。
 *
 * <p>端点：{@code GET /system/ai-session/search?keyword=&limit=}（经 /api 前缀剥离后）。
 * 返回 {@code {success, data:[{id,title,update_date,hit_count,snippet}]}}。
 */
@RestController
@RequestMapping("/system/ai-session")
public class AiSessionSearchController {

    private static final Logger log = LoggerFactory.getLogger(AiSessionSearchController.class);

    private final JdbcTemplate jdbc;

    public AiSessionSearchController(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @GetMapping("/search")
    public Map<String, Object> search(@RequestParam("keyword") String keyword,
                                      @RequestParam(value = "limit", required = false, defaultValue = "30") int limit) {
        String userId;
        try {
            userId = String.valueOf(StpUtil.getLoginId());
        } catch (Exception e) {
            return Map.of("success", false, "message", KernelMessages.legacy("未登录"), "data", List.of());
        }
        String kw = keyword == null ? "" : keyword.trim();
        if (kw.isEmpty()) {
            return Map.of("success", true, "data", List.of());
        }
        int cap = Math.max(1, Math.min(limit, 100));
        String like = "%" + kw + "%";
        try {
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT s.id, s.title, s.update_date, " +
                    "  (SELECT COUNT(*) FROM sys_ai_message m WHERE m.session_id = s.id AND m.content LIKE ?) AS hit_count, " +
                    "  (SELECT m.content FROM sys_ai_message m WHERE m.session_id = s.id AND m.content LIKE ? ORDER BY m.create_date LIMIT 1) AS snippet " +
                    "FROM sys_ai_session s " +
                    "WHERE s.user_id = ? AND s.is_del = 0 AND (" +
                    "  s.title LIKE ? OR EXISTS (SELECT 1 FROM sys_ai_message m2 WHERE m2.session_id = s.id AND m2.content LIKE ?)" +
                    ") ORDER BY s.update_date DESC LIMIT ?",
                    like, like, userId, like, like, cap);

            List<Map<String, Object>> out = new ArrayList<>(rows.size());
            for (Map<String, Object> r : rows) {
                Map<String, Object> m = new LinkedHashMap<>();
                m.put("id", r.get("id"));
                m.put("title", r.get("title"));
                m.put("update_date", r.get("update_date"));
                m.put("hit_count", r.get("hit_count"));
                m.put("snippet", snippet((String) r.get("snippet"), kw));
                out.add(m);
            }
            return Map.of("success", true, "data", out);
        } catch (Exception e) {
            log.warn("会话检索失败: {}", e.getMessage());
            return Map.of("success", false, "message", String.valueOf(e.getMessage()), "data", List.of());
        }
    }

    /** 截取关键词附近的片段，压成单行。 */
    private static String snippet(String content, String kw) {
        if (content == null || content.isBlank()) return "";
        String s = content.replaceAll("\\s+", " ").trim();
        if (s.length() > 120) {
            int idx = s.toLowerCase().indexOf(kw.toLowerCase());
            int start = idx > 20 ? idx - 20 : 0;
            int end = Math.min(start + 120, s.length());
            s = (start > 0 ? "…" : "") + s.substring(start, end) + (end < s.length() ? "…" : "");
        }
        return s;
    }
}
