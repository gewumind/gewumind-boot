package com.gewumind.app.ai;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.configuration.KernelMessages;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
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
 * AI 审计（补充）—— 从 {@code sys_ai_message} 生成可查询的审计数据。
 *
 * <p>内核的 {@code /system/ai-audit/tool-calls} 读的是 {@code sys_ai_tool_call}，但该表当前
 * 没有落库逻辑，永远为空。这里改为解析助手消息里已持久化的 {@code tool_trace}（工具/入参/结果/耗时）
 * 与 {@code refusal_code}（拒答/越权），支撑「每个答案可追溯」。
 *
 * <p>端点：
 * <ul>
 *   <li>{@code GET /system/ai-audit-extra/tool-calls?userId=&toolKey=&status=&keyword=&limit=}</li>
 *   <li>{@code GET /system/ai-audit-extra/refusals?userId=&keyword=&limit=}</li>
 * </ul>
 */
@RestController
@RequestMapping("/system/ai-audit-extra")
public class AiAuditExtraController {

    private static final ObjectMapper json = new ObjectMapper();

    private final JdbcTemplate jdbc;

    @Value("${app.lang:zh}")
    private String lang;

    public AiAuditExtraController(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @GetMapping("/tool-calls")
    public Map<String, Object> toolCalls(@RequestParam(required = false) String userId,
                                         @RequestParam(required = false) String toolKey,
                                         @RequestParam(required = false) String status,
                                         @RequestParam(required = false) String keyword,
                                         @RequestParam(required = false, defaultValue = "200") int limit) {
        if (!loggedIn()) return Map.of("success", false, "message", KernelMessages.legacy("未登录"), "data", List.of());
        int cap = Math.max(1, Math.min(limit, 500));
        try {
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT m.id, m.session_id, m.tool_trace, m.content AS answer, m.create_date, s.user_id, u.username, " +
                    "(SELECT m2.content FROM sys_ai_message m2 WHERE m2.session_id = m.session_id AND m2.role = 'user' AND m2.create_date <= m.create_date ORDER BY m2.create_date DESC LIMIT 1) AS question " +
                    "FROM sys_ai_message m " +
                    "LEFT JOIN sys_ai_session s ON s.id = m.session_id " +
                    "LEFT JOIN sys_user u ON u.id = s.user_id " +
                    "WHERE m.tool_trace IS NOT NULL AND m.tool_trace <> '' " +
                    "ORDER BY m.create_date DESC LIMIT 2000");

            String uk = blank(userId) ? null : userId.trim();
            String tk = blank(toolKey) ? null : toolKey.trim().toLowerCase();
            String st = blank(status) ? null : status.trim();
            String kw = blank(keyword) ? null : keyword.trim().toLowerCase();

            List<Map<String, Object>> out = new ArrayList<>();
            for (Map<String, Object> r : rows) {
                Map<?, ?> tr;
                try {
                    tr = json.readValue(String.valueOf(r.get("tool_trace")), Map.class);
                } catch (Exception e) {
                    continue;
                }
                String tool = str(tr.get("tool"));
                String stat = str(tr.get("status"));
                String uid = str(r.get("user_id"));
                String uname = str(r.get("username"));
                if (uk != null && !uk.equals(uid)) continue;
                if (tk != null && (tool == null || !tool.toLowerCase().contains(tk))) continue;
                if (st != null && !st.equals(stat)) continue;
                String paramsJson;
                try {
                    paramsJson = json.writeValueAsString(tr.get("params"));
                } catch (Exception e) {
                    paramsJson = String.valueOf(tr.get("params"));
                }
                if (kw != null) {
                    String hay = (nz(tool) + " " + nz(stat) + " " + nz(paramsJson) + " " + nz(uid) + " " + nz(uname)).toLowerCase();
                    if (!hay.contains(kw)) continue;
                }
                Map<String, Object> m = new LinkedHashMap<>();
                m.put("id", r.get("id"));
                m.put("sessionId", r.get("session_id"));
                m.put("userId", uid);
                m.put("username", uname);
                m.put("toolKey", tool);
                m.put("status", stat);
                m.put("rowCount", tr.get("rowCount"));
                m.put("costMs", tr.get("costMs"));
                m.put("params", paramsJson);
                m.put("question", r.get("question"));
                m.put("answer", r.get("answer"));
                m.put("createDate", r.get("create_date"));
                out.add(m);
                if (out.size() >= cap) break;
            }
            return Map.of("success", true, "data", out, "total", out.size());
        } catch (Exception e) {
            return Map.of("success", false, "message", String.valueOf(e.getMessage()), "data", List.of());
        }
    }

    @GetMapping("/refusals")
    public Map<String, Object> refusals(@RequestParam(required = false) String userId,
                                        @RequestParam(required = false) String keyword,
                                        @RequestParam(required = false, defaultValue = "200") int limit) {
        if (!loggedIn()) return Map.of("success", false, "message", KernelMessages.legacy("未登录"), "data", List.of());
        int cap = Math.max(1, Math.min(limit, 500));
        try {
            StringBuilder sql = new StringBuilder(
                    "SELECT m.id, m.session_id, m.content, m.refusal_code, m.create_date, s.user_id, u.username, " +
                    "(SELECT m2.content FROM sys_ai_message m2 WHERE m2.session_id = m.session_id AND m2.role = 'user' AND m2.create_date <= m.create_date ORDER BY m2.create_date DESC LIMIT 1) AS question " +
                    "FROM sys_ai_message m " +
                    "LEFT JOIN sys_ai_session s ON s.id = m.session_id " +
                    "LEFT JOIN sys_user u ON u.id = s.user_id " +
                    "WHERE m.role = 'assistant' AND m.refusal_code IS NOT NULL AND m.refusal_code <> ''");
            List<Object> args = new ArrayList<>();
            if (!blank(userId)) { sql.append(" AND s.user_id = ?"); args.add(userId.trim()); }
            if (!blank(keyword)) { sql.append(" AND m.content LIKE ?"); args.add("%" + keyword.trim() + "%"); }
            sql.append(" ORDER BY m.create_date DESC LIMIT ").append(cap);

            List<Map<String, Object>> rows = jdbc.queryForList(sql.toString(), args.toArray());
            List<Map<String, Object>> out = new ArrayList<>(rows.size());
            for (Map<String, Object> r : rows) {
                Map<String, Object> m = new LinkedHashMap<>();
                m.put("id", r.get("id"));
                m.put("sessionId", r.get("session_id"));
                m.put("userId", r.get("user_id"));
                m.put("username", r.get("username"));
                m.put("content", r.get("content"));
                m.put("answer", r.get("content"));
                m.put("question", r.get("question"));
                m.put("refusalCode", r.get("refusal_code"));
                m.put("createDate", r.get("create_date"));
                out.add(m);
            }
            return Map.of("success", true, "data", out, "total", out.size());
        } catch (Exception e) {
            return Map.of("success", false, "message", String.valueOf(e.getMessage()), "data", List.of());
        }
    }

    @GetMapping("/records")
    public Map<String, Object> records(@RequestParam(required = false) String userId,
                                       @RequestParam(required = false) String toolKey,
                                       @RequestParam(required = false) String status,
                                       @RequestParam(required = false) String keyword,
                                       @RequestParam(required = false) String start,
                                       @RequestParam(required = false) String end,
                                       @RequestParam(required = false) String channelId,
                                       @RequestParam(value = "kind", required = false) String kindSel,
                                       @RequestParam(required = false, defaultValue = "200") int limit) {
        if (!loggedIn()) return Map.of("success", false, "message", KernelMessages.legacy("未登录"), "data", List.of());
        int cap = Math.max(1, Math.min(limit, 500));
        String uk = blank(userId) ? null : userId.trim();
        String tk = blank(toolKey) ? null : toolKey.trim().toLowerCase();
        String st = blank(status) ? null : status.trim();
        String kw = blank(keyword) ? null : keyword.trim().toLowerCase();
        String dStart = blank(start) ? null : start.trim();
        String dEnd = blank(end) ? null : end.trim();
        String chFilter = blank(channelId) ? null : channelId.trim();
        String kindFilter = blank(kindSel) ? null : kindSel.trim();
        List<Map<String, Object>> out = new ArrayList<>();
        try {
            // 所有助手回答（工具调用 / 拒答 / 普通会话问答）都进入审计
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT m.id, m.session_id, m.content AS answer, m.tool_trace, m.refusal_code, m.grounded, m.create_date, s.user_id, u.username, s.channel, s.channel_id, ch.name AS channel_name, " +
                    "(SELECT m2.content FROM sys_ai_message m2 WHERE m2.session_id = m.session_id AND m2.role = 'user' AND m2.create_date <= m.create_date ORDER BY m2.create_date DESC LIMIT 1) AS question " +
                    "FROM sys_ai_message m " +
                    "LEFT JOIN sys_ai_session s ON s.id = m.session_id " +
                    "LEFT JOIN sys_user u ON u.id = s.user_id " +
                    "LEFT JOIN sys_ai_channel ch ON ch.id = s.channel_id " +
                    "WHERE m.role = 'assistant' ORDER BY m.create_date DESC LIMIT 2000");
            for (Map<String, Object> r : rows) {
                String uid = str(r.get("user_id"));
                String uname = str(r.get("username"));
                String question = str(r.get("question"));
                String content = str(r.get("answer"));
                String traceJson = str(r.get("tool_trace"));
                String code = str(r.get("refusal_code"));

                String kind;
                String tool = null;
                String stat;
                String paramsJson = null;
                Object rowCount = null;
                Object costMs = null;
                if (traceJson != null && !traceJson.isBlank()) {
                    kind = "tool";
                    Map<?, ?> tr;
                    try { tr = json.readValue(traceJson, Map.class); }
                    catch (Exception e) { continue; }
                    tool = str(tr.get("tool"));
                    stat = str(tr.get("status"));
                    if (stat == null) stat = "success";
                    try { paramsJson = json.writeValueAsString(tr.get("params")); }
                    catch (Exception e) { paramsJson = String.valueOf(tr.get("params")); }
                    rowCount = tr.get("rowCount");
                    costMs = tr.get("costMs");
                } else if (code != null && !code.isBlank()) {
                    kind = "refusal";
                    stat = code;
                } else {
                    kind = "chat";
                    stat = "success";
                }

                if (kindFilter != null && !kindFilter.equals(kind)) continue;
                if (uk != null && !uk.equals(uid)) continue;
                if (tk != null && (tool == null || !tool.toLowerCase().contains(tk))) continue;
                if (st != null && !st.equals(stat)) continue;
                if (kw != null) {
                    String hay = (nz(tool) + " " + nz(stat) + " " + nz(paramsJson) + " " + nz(question) + " " + nz(content) + " " + nz(uid) + " " + nz(uname)).toLowerCase();
                    if (!hay.contains(kw)) continue;
                }
                String recChId = str(r.get("channel_id"));
                if (chFilter != null) {
                    if ("web".equals(chFilter)) {
                        if (recChId != null && !recChId.isBlank()) continue;
                    } else if (!chFilter.equals(recChId)) {
                        continue;
                    }
                }
                String dateStr = String.valueOf(r.get("create_date"));
                if (dateStr.length() >= 10) {
                    String d = dateStr.substring(0, 10);
                    if (dStart != null && d.compareTo(dStart) < 0) continue;
                    if (dEnd != null && d.compareTo(dEnd) > 0) continue;
                }
                Map<String, Object> m = new LinkedHashMap<>();
                m.put("id", r.get("id"));
                m.put("sessionId", r.get("session_id"));
                m.put("userId", uid);
                m.put("username", uname);
                m.put("kind", kind);
                m.put("toolKey", tool);
                m.put("params", paramsJson);
                m.put("status", stat);
                m.put("rowCount", rowCount);
                m.put("costMs", costMs);
                m.put("question", question);
                m.put("answer", content);
                String chName = str(r.get("channel_name"));
                String chCode = str(r.get("channel"));
                m.put("channelId", recChId);
                m.put("channelName", chName != null && !chName.isBlank() ? chName : ("web".equals(chCode) ? ("en".equalsIgnoreCase(lang == null ? "" : lang.trim()) ? "Web" : "系统") : (chCode == null ? "-" : chCode)));
                m.put("createDate", r.get("create_date"));
                out.add(m);
            }
        } catch (Exception e) {
            return Map.of("success", false, "message", String.valueOf(e.getMessage()), "data", List.of());
        }
        out.sort((a, b) -> String.valueOf(b.get("createDate")).compareTo(String.valueOf(a.get("createDate"))));
        if (out.size() > cap) out = new ArrayList<>(out.subList(0, cap));
        return Map.of("success", true, "data", out, "total", out.size());
    }

    private boolean loggedIn() {
        try {
            StpUtil.checkLogin();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean blank(String s) {
        return s == null || s.isBlank();
    }

    private static String str(Object o) {
        return o == null ? null : String.valueOf(o);
    }

    private static String nz(String s) {
        return s == null ? "" : s;
    }
}
