package com.gewumind.app.demo;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.regex.Pattern;

/**
 * 演示模式（只读）闸门。
 *
 * <p>配置：{@code app.demo.read-only=true}（demo profile 默认开启，也可用环境变量
 * {@code APP_DEMO_READ_ONLY=true} 覆盖）。开启后：
 * <ul>
 *   <li>普通业务写操作（保存/删除/更新等）提示“当前环境是演示环境，不能保存”；</li>
 *   <li>低代码在线开发（{@code /magic/web}）只允许浏览：非 GET 请求默认拒绝，
 *       仅放行加载资源树/详情/搜索等只读接口；</li>
 *   <li>低代码在线开发里的“测试”请求会带 {@code Magic-Request-Script-Id} 头，
 *       非 GET 一律拒绝，避免用测试执行写脚本。</li>
 * </ul>
 */
@Component
@Order(Ordered.HIGHEST_PRECEDENCE + 10)
public class DemoModeFilter extends OncePerRequestFilter {

    private static final Pattern MUTATION = Pattern.compile(
            "(?i)/(?:save|delete|remove|update|import|reset|regenerate|publish|assign|sort|change|send|apply"
                    + "|restart|upload|edit|batch|enable|disable|revoke|grant|create|modify|read)(?:[/-]|$)"
                    + "|/ai-tools/status(?:$|[/-])");

    /**
     * 在线开发里用 POST 的只读接口白名单（加载资源树、API 详情、搜索、用户信息、类列表、
     * 编辑器登录/退出、导出）。其余 POST/PUT/DELETE 一律拒绝。
     */
    private static final Pattern EDITOR_READ_POST = Pattern.compile(
            "(?i)^/magic/web/(?:resource|resource/file/[^/]+|search|user|classes|login|logout|download)$");

    /**
     * 在线开发“测试/调试”允许的只读路径（GET 天然放行；POST 查询需命中这些动作段）。
     * 命中写动作（save/delete/update…）或 secret 的请求仍会被拒绝。
     */
    private static final Pattern EDITOR_TEST_READ = Pattern.compile(
            "(?i)/(?:list|page|search|query|detail|tree|catalog|info|count|stats|export|download|status"
                    + "|records|menus|roles?|tools|docs?|acl|sign|embed|keys|logs|history|current|test"
                    + "|user-assignments|assignments|report|trend)(?:[/-]|$)"
                    + "|/get(?!-secret)(?:[/-]|$)");

    private final boolean readOnly;
    private final String message;
    private final String editorMessage;

    public DemoModeFilter(@Value("${app.demo.read-only:false}") boolean readOnly,
                          @Value("${app.lang:zh}") String lang) {
        this.readOnly = readOnly;
        boolean en = "en".equalsIgnoreCase(lang == null ? "" : lang.trim());
        this.message = en
                ? "This is a demo environment. Saving is disabled."
                : "当前环境是演示环境，不能保存";
        this.editorMessage = en
                ? "This is a demo environment. Online development is read-only."
                : "当前环境是演示环境，在线开发仅可浏览，不能修改";
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                    FilterChain chain) throws ServletException, IOException {
        if (!readOnly) {
            chain.doFilter(request, response);
            return;
        }
        String method = request.getMethod();
        String path = normalize(request.getRequestURI());

        // 低代码在线开发：默认只读，仅放行少量浏览接口
        if (path.startsWith("/magic/") && !isSafe(method)
                && !EDITOR_READ_POST.matcher(path).matches()) {
            block(response, editorMessage);
            return;
        }

        // 在线开发“测试/调试”请求：放行 GET 与只读查询类 POST，写操作仍拒绝
        if (!isSafe(method)
                && (header(request, "Magic-Request-Script-Id") || header(request, "Magic-Request-Client-Id"))) {
            boolean readQuery = EDITOR_TEST_READ.matcher(path).find();
            boolean secret = path.toLowerCase().contains("secret");
            if (!readQuery || secret || MUTATION.matcher(path).find()) {
                block(response, editorMessage);
                return;
            }
        }

        // 普通业务写操作
        if (isWrite(method, path)) {
            block(response, message);
            return;
        }
        chain.doFilter(request, response);
    }

    private boolean isWrite(String method, String path) {
        if ("DELETE".equalsIgnoreCase(method) || "PUT".equalsIgnoreCase(method)
                || "PATCH".equalsIgnoreCase(method)) {
            return true;
        }
        if (!"POST".equalsIgnoreCase(method)) {
            return false;
        }
        return MUTATION.matcher(path).find();
    }

    private boolean isSafe(String method) {
        return "GET".equalsIgnoreCase(method)
                || "HEAD".equalsIgnoreCase(method)
                || "OPTIONS".equalsIgnoreCase(method);
    }

    private boolean header(HttpServletRequest request, String name) {
        String v = request.getHeader(name);
        return v != null && !v.isBlank();
    }

    private void block(HttpServletResponse response, String message) throws IOException {
        response.setStatus(HttpServletResponse.SC_OK);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(
                "{\"success\":false,\"code\":403,\"message\":\"" + message + "\"}");
    }

    private String normalize(String uri) {
        String path = uri == null ? "" : uri;
        int semi = path.indexOf(';');
        if (semi >= 0) path = path.substring(0, semi);
        if (path.startsWith("/api/")) path = path.substring(4);
        return path;
    }
}
