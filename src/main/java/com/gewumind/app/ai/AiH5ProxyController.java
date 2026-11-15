package com.gewumind.app.ai;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.configuration.KernelMessages;
import com.gewumind.boot.api.AiChatAnswer;
import com.gewumind.boot.api.AiChatOrchestrator;
import com.gewumind.boot.api.AiH5ChannelService;
import com.gewumind.boot.api.AiSessionService;
import com.gewumind.boot.license.LicenseFeature;
import com.gewumind.boot.license.LicenseGate;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.time.LocalDateTime;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * H5 客服「用户名绑定」问答代理。
 *
 * <p>内核的匿名/手机号 H5 通道默认关闭（{@code ai.h5.require-user=true}）。本代理是 H5 的
 * 唯一数据入口：<b>用 URL 里的用户名解析为系统用户</b>，再走与内部客服一致的
 * {@link AiChatOrchestrator#chat} 链路 —— 按该用户的 AI 角色（工具授权）与平台数据权限
 * （机构/本人/全部）作答，并复用 H5 会话做多轮上下文压缩。
 *
 * <p>端点：{@code POST /system/ai-h5/chat/stream}，body {@code {channel_id, question, username}}，
 * SSE 事件 status/citations/message/done/error（与内核 H5 一致）。
 */
@RestController
@RequestMapping("/system/ai-h5")
public class AiH5ProxyController {

    private static final Logger log = LoggerFactory.getLogger(AiH5ProxyController.class);
    private static final ObjectMapper json = new ObjectMapper();
    private static final long SSE_TIMEOUT = 120_000L;

    private final JdbcTemplate jdbc;
    private final AiChatOrchestrator orchestrator;
    private final AiH5ChannelService channelService;
    private final LicenseGate licenseGate;
    private final H5SignService signService;
    private final AiSessionService sessionService;

    private final ExecutorService executor = Executors.newCachedThreadPool(r -> {
        Thread t = new Thread(r, "ai-h5-proxy");
        t.setDaemon(true);
        return t;
    });

    public AiH5ProxyController(JdbcTemplate jdbc, AiChatOrchestrator orchestrator,
                               AiH5ChannelService channelService, LicenseGate licenseGate,
                               H5SignService signService, AiSessionService sessionService) {
        this.jdbc = jdbc;
        this.orchestrator = orchestrator;
        this.channelService = channelService;
        this.licenseGate = licenseGate;
        this.signService = signService;
        this.sessionService = sessionService;
    }

    /** 获取公钥（管理员）。 */
    @GetMapping("/keys")
    public Map<String, Object> keys() {
        try { StpUtil.checkLogin(); } catch (Exception e) { return Map.of("success", false, "message", KernelMessages.legacy("未登录")); }
        return Map.of("success", true, "data", Map.of("publicKey", signService.publicKeyBase64()));
    }

    /** 重新生成密钥对（管理员）。 */
    @PostMapping("/keys/regenerate")
    public Map<String, Object> regenerateKeys() {
        try { StpUtil.checkLogin(); } catch (Exception e) { return Map.of("success", false, "message", KernelMessages.legacy("未登录")); }
        return Map.of("success", true, "data", Map.of("publicKey", signService.regenerate()));
    }

    /** 当前登录用户的默认渠道接入信息（用于页面右侧内嵌客服面板）。 */
    @GetMapping("/embed")
    public Map<String, Object> embed() {
        String userId;
        try {
            userId = String.valueOf(StpUtil.getLoginId());
        } catch (Exception e) {
            return Map.of("success", false, "message", KernelMessages.legacy("未登录"));
        }
        try {
            String username = null;
            List<Map<String, Object>> us = jdbc.queryForList(
                    "SELECT username FROM sys_user WHERE id = ? AND is_del = 0", userId);
            if (!us.isEmpty()) username = String.valueOf(us.get(0).get("username"));
            if (username == null || username.isBlank()) {
                return Map.of("success", false, "message", "用户不存在");
            }
            List<Map<String, Object>> chs = jdbc.queryForList(
                    "SELECT id FROM sys_ai_channel WHERE is_del = 0 AND status = 'active' ORDER BY id LIMIT 1");
            if (chs.isEmpty()) {
                return Map.of("success", false, "message", "未配置启用的渠道");
            }
            long exp = System.currentTimeMillis() / 1000L + 86400L;
            Map<String, Object> data = new LinkedHashMap<>();
            data.put("channelId", String.valueOf(chs.get(0).get("id")));
            data.put("username", username);
            data.put("exp", String.valueOf(exp));
            data.put("sig", signService.sign(username, exp));
            return Map.of("success", true, "data", data);
        } catch (Exception e) {
            return Map.of("success", false, "message", String.valueOf(e.getMessage()));
        }
    }

    /** 管理员签发 H5 接入令牌（user + exp + sig）。 */
    @PostMapping("/sign")
    public Map<String, Object> sign(@RequestBody Map<String, String> body) {
        try {
            StpUtil.checkLogin();
        } catch (Exception e) {
            return Map.of("success", false, "message", KernelMessages.legacy("未登录"));
        }
        String username = body == null ? null : body.get("username");
        if (username == null || username.isBlank()) {
            return Map.of("success", false, "message", "缺少用户名");
        }
        String publicKey = body.get("publicKey");
        String current = signService.publicKeyBase64();
        if (publicKey == null || publicKey.isBlank()) {
            return Map.of("success", false, "message", KernelMessages.legacy("缺少公钥 publicKey（请先调用 GET /system/ai-h5/keys 获取）"), "data", Map.of("publicKey", current));
        }
        if (!current.equals(publicKey.trim())) {
            return Map.of("success", false, "message", KernelMessages.legacy("公钥不匹配（可能已轮换），请重新获取公钥"), "data", Map.of("publicKey", current));
        }
        long ttl = 86400L;
        try {
            if (body.get("ttl") != null) ttl = Long.parseLong(body.get("ttl"));
        } catch (Exception ignored) {
        }
        long exp = System.currentTimeMillis() / 1000L + Math.max(60, ttl);
        String sig = signService.sign(username.trim(), exp);
        Map<String, Object> data = new LinkedHashMap<>();
        data.put("username", username.trim());
        data.put("exp", String.valueOf(exp));
        data.put("sig", sig);
        data.put("publicKey", current);
        return Map.of("success", true, "data", data);
    }

    /** H5 历史会话列表（签名用户或匿名 h5_token）。 */
    @GetMapping("/sessions")
    public Map<String, Object> sessions(@RequestParam(value = "channel_id", required = false) String channelId,
                                        @RequestParam(value = "username", required = false) String username,
                                        @RequestParam(value = "exp", required = false) String exp,
                                        @RequestParam(value = "sig", required = false) String sig) {
        Map<String, String> identity = resolveH5Identity(channelId, username, exp, sig);
        if (identity == null) {
            return Map.of("success", false, "message", KernelMessages.legacy("接入链接无效或已过期，请重新生成"));
        }
        List<Map<String, Object>> rows = jdbc.queryForList(
                "SELECT id, title, create_date, update_date FROM sys_ai_session " +
                        "WHERE channel = 'h5' AND channel_id = ? AND is_del = 0 AND user_id = ? " +
                        "ORDER BY update_date DESC LIMIT 50",
                channelId, identity.get("userId"));
        return Map.of("success", true, "data", rows);
    }

    /** H5 历史会话消息（必须是当前身份在该渠道下的会话）。 */
    @GetMapping("/sessions/{id}/messages")
    public Map<String, Object> sessionMessages(@PathVariable String id,
                                               @RequestParam(value = "channel_id", required = false) String channelId,
                                               @RequestParam(value = "username", required = false) String username,
                                               @RequestParam(value = "exp", required = false) String exp,
                                               @RequestParam(value = "sig", required = false) String sig) {
        Map<String, String> identity = resolveH5Identity(channelId, username, exp, sig);
        if (identity == null) {
            return Map.of("success", false, "message", KernelMessages.legacy("接入链接无效或已过期，请重新生成"));
        }
        Integer cnt = jdbc.queryForObject(
                "SELECT COUNT(*) FROM sys_ai_session WHERE id = ? AND channel = 'h5' AND channel_id = ? " +
                        "AND is_del = 0 AND user_id = ?",
                Integer.class, id, channelId, identity.get("userId"));
        if (cnt == null || cnt == 0) {
            return Map.of("success", false, "message", KernelMessages.legacy("会话不存在"));
        }
        List<Map<String, Object>> rows = jdbc.queryForList(
                "SELECT id, role, content, type, create_date FROM sys_ai_message " +
                        "WHERE session_id = ? ORDER BY create_date ASC",
                id);
        return Map.of("success", true, "data", rows);
    }

    private Map<String, String> resolveH5Identity(String channelId, String username, String exp,
                                                  String sig) {
        if (channelId == null || channelId.isBlank() || username == null || username.isBlank()) return null;
        if (!signService.verify(username, exp, sig)) return null;
        try {
            List<Map<String, Object>> users = jdbc.queryForList(
                    "SELECT id FROM sys_user WHERE username = ? AND is_del = 0", username.trim());
            if (users.isEmpty()) return null;
            Map<String, String> identity = new LinkedHashMap<>();
            identity.put("userId", String.valueOf(users.get(0).get("id")));
            return identity;
        } catch (Exception e) {
            return null;
        }
    }

    @PostMapping(value = "/chat/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter stream(@RequestBody Map<String, String> body) {
        SseEmitter emitter = new SseEmitter(SSE_TIMEOUT);
        String channelId = body == null ? null : body.get("channel_id");
        String question = body == null ? null : body.get("question");
        String username = body == null ? null : body.get("username");
        String reqSessionId = body == null ? null : body.get("session_id");

        if (!licenseGate.isActive("ai.h5.enabled", LicenseFeature.AI_H5)) {
            return error(emitter, "H5_DISABLED", "H5 客服未开启，请联系管理员");
        }
        if (!licenseGate.isActive("ai.enabled", LicenseFeature.AI_CHAT_INTERNAL)) {
            return error(emitter, "AI_DISABLED", "AI 助手未开启，请联系管理员");
        }
        if (channelId == null || channelId.isBlank()) {
            return error(emitter, "NEED_CLARIFY", "缺少渠道标识");
        }
        Map<String, Object> channel;
        try {
            channel = channelService.loadChannel(channelId);
        } catch (Exception e) {
            channel = null;
        }
        if (channel == null) {
            return error(emitter, "CHANNEL_NOT_FOUND", "渠道不存在或已停用");
        }
        if (question == null || question.isBlank()) {
            return error(emitter, "NEED_CLARIFY", "请输入问题");
        }
        if (username == null || username.isBlank()) {
            return error(emitter, "NEED_USER", KernelMessages.legacy("缺少用户名（接入 URL 需带 user 参数）"));
        }
        if (!signService.verify(username, body.get("exp"), body.get("sig"))) {
            return error(emitter, "H5_UNAUTHORIZED", KernelMessages.legacy("接入链接无效或已过期，请重新生成"));
        }

        String userId;
        try {
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT id FROM sys_user WHERE username = ? AND is_del = 0", username.trim());
            if (rows.isEmpty()) {
                return error(emitter, "USER_NOT_FOUND", "用户不存在：" + username);
            }
            userId = String.valueOf(rows.get(0).get("id"));
        } catch (Exception e) {
            return error(emitter, "USER_NOT_FOUND", KernelMessages.legacy("用户解析失败：") + e.getMessage());
        }

        try {
            Integer rateLimit = channel.get("rate_limit") == null ? null : Integer.valueOf(String.valueOf(channel.get("rate_limit")));
            if (!channelService.withinRateLimit(channelId, "user:" + username, rateLimit)) {
                return error(emitter, "RATE_LIMITED", "请求过于频繁，请稍后再试");
            }
        } catch (Exception ignored) {
        }

        String sid = ensureSession(channelId, userId, reqSessionId, question);
        if (sid != null) {
            try {
                sessionService.saveMessage(sid, "user", question, null, null, null, null);
            } catch (Exception e) {
                log.warn("H5 用户消息落库失败: {}", e.getMessage());
            }
        }

        send(emitter, "status", Map.of("stage", "planning"));
        final String uid = userId;
        final String h5SessionId = sid;
        executor.submit(() -> {
            try {
                AiChatAnswer answer = orchestrator.chat(question, uid, h5SessionId);
                if (answer != null && answer.citations != null && !answer.citations.isEmpty()) {
                    send(emitter, "citations", Map.of("citations", answer.citations));
                }
                send(emitter, "message", Map.of("content",
                        answer == null || answer.content == null ? "" : answer.content));
                String messageId = persistAssistant(h5SessionId, answer);
                boolean ok = answer != null && answer.isSuccess();
                Map<String, Object> done = new LinkedHashMap<>();
                if (h5SessionId != null) done.put("session_id", h5SessionId);
                if (messageId != null) done.put("message_id", messageId);
                done.put("status", answer == null || answer.status == null ? "tool_error" : answer.status);
                done.put("grounded", ok);
                done.put("refusal_code", ok ? "" : (answer == null ? "tool_error" : answer.status));
                send(emitter, "done", done);
                emitter.complete();
            } catch (Exception e) {
                log.error("H5(用户名)问答失败", e);
                send(emitter, "error", Map.of("code", "TOOL_ERROR", "message", String.valueOf(e.getMessage())));
                emitter.complete();
            }
        });
        emitter.onTimeout(emitter::complete);
        emitter.onError(t -> emitter.complete());
        return emitter;
    }

    /** 复用请求里的 session_id（必须属于该用户），否则新建；返回 null 表示落库不可用。 */
    private String ensureSession(String channelId, String userId, String requested, String question) {
        String sid = requested == null ? "" : requested.trim();
        try {
            if (!sid.isBlank()) {
                Integer cnt = jdbc.queryForObject(
                        "SELECT COUNT(*) FROM sys_ai_session WHERE id = ? AND user_id = ? AND is_del = 0",
                        Integer.class, sid, userId);
                if (cnt != null && cnt > 0) {
                    jdbc.update("UPDATE sys_ai_session SET channel = 'h5', channel_id = ?, update_date = ? WHERE id = ?",
                            channelId, LocalDateTime.now(), sid);
                    return sid;
                }
            }
            sid = UUID.randomUUID().toString().replace("-", "");
            String title = question.length() > 50 ? question.substring(0, 50) : question;
            LocalDateTime now = LocalDateTime.now();
            jdbc.update("INSERT INTO sys_ai_session(id,user_id,channel,channel_id,title,is_del,create_date,update_date) " +
                    "VALUES(?,?,?,?,?,0,?,?)", sid, userId, "h5", channelId, title, now, now);
            return sid;
        } catch (Exception e) {
            log.warn("H5 会话创建/复用失败: {}", e.getMessage());
            return null;
        }
    }

    /** H5 助手消息落库：引用 / 工具轨迹 / 后检 / 拒答码；返回消息 ID。 */
    private String persistAssistant(String sessionId, AiChatAnswer answer) {
        if (sessionId == null || answer == null) return null;
        try {
            String citationsJson = (answer.citations == null || answer.citations.isEmpty())
                    ? null : json.writeValueAsString(answer.citations);
            String traceJson = answer.toolTrace == null ? null : json.writeValueAsString(answer.toolTrace);
            boolean ok = answer.isSuccess();
            Integer grounded = ok ? 1 : 0;
            String refusalCode = ok ? null : answer.status;
            String content = answer.content == null ? "" : answer.content;
            String type = answer.status == null ? "success" : answer.status;
            return sessionService.saveMessage20(sessionId, "assistant", content, type,
                    citationsJson, traceJson, grounded, refusalCode);
        } catch (Exception e) {
            log.warn("H5 助手消息落库失败: {}", e.getMessage());
            return null;
        }
    }

    private SseEmitter error(SseEmitter emitter, String code, String message) {
        send(emitter, "error", Map.of("code", code, "message", message));
        emitter.complete();
        return emitter;
    }

    private void send(SseEmitter emitter, String event, Object data) {
        try {
            emitter.send(SseEmitter.event().name(event).data(json.writeValueAsString(data)));
        } catch (Exception e) {
            log.debug("SSE 发送失败 {}: {}", event, e.getMessage());
        }
    }
}
