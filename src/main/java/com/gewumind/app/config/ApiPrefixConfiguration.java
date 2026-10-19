package com.gewumind.app.config;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.IOException;

/**
 * 剥掉请求路径上的 {@code /api} 前缀。
 *
 * <h3>为什么需要</h3>
 * 前端 {@code src/scripts/request.js} 的拦截器给<b>所有</b>业务请求加了 {@code /api} 前缀：
 * <pre>
 *   if (config.url &amp;&amp; !config.url.startsWith('/api') &amp;&amp; !config.url.startsWith('http')) {
 *       config.url = '/api' + config.url
 *   }
 * </pre>
 * 开发时靠 vite dev server 的代理把它还原（{@code vite.config.js} 里
 * {@code rewrite: path => path.replace(/^\/api/, '')}），生产构建没有代理，
 * 这个前缀就得由服务端认。
 *
 * <p>内核本身也认这个前缀，但只认了一部分：
 * {@code ComponentManagementController} / {@code ComponentRuntimeController}
 * 写了双路径 {@code @RequestMapping({"/system/component", "/api/system/component"})}，
 * 其余路由（{@code /ai/**}、{@code /system/**} 的 magic-api 脚本等）都没有。
 * 硬编码双路径既漏又难维护，所以在入口统一剥一次。
 *
 * <h3>影响面</h3>
 * <ul>
 *   <li>剥：{@code /api/system/security/login} → {@code /system/security/login}（magic-api 脚本）</li>
 *   <li>剥：{@code /api/ai/system-config} → {@code /ai/system-config}（{@code AiApiController}）</li>
 *   <li>不动：{@code /magic/**}、{@code /druid/**}、{@code /userfiles/**}、静态资源</li>
 * </ul>
 * 两个 component controller 的双路径映射不受影响 —— 剥完只剩标准路径命中其中一个。
 *
 * <p>前缀由 {@code gewumind.api-prefix} 配置，置空即关闭。
 */
@Configuration(proxyBeanMethods = false)
public class ApiPrefixConfiguration {

    private static final Logger log = LoggerFactory.getLogger(ApiPrefixConfiguration.class);

    /** 请求路径前缀，前端统一会带上 */
    @Value("${gewumind.api-prefix:/api}")
    private String apiPrefix;

    @Bean
    public FilterRegistrationBean<Filter> apiPrefixStripFilter() {
        String prefix = normalize(apiPrefix);
        log.info("[gewumind] API 前缀剥离: {}", prefix.isEmpty() ? "(关闭)" : prefix);

        FilterRegistrationBean<Filter> bean = new FilterRegistrationBean<>();
        bean.setFilter(new ApiPrefixStripFilter(prefix));
        // 排在 Spring Boot 自带过滤器之前，但让出最高的两个位置给编码/请求缓存
        bean.setOrder(-100);
        bean.addUrlPatterns("/*");
        bean.setName("apiPrefixStripFilter");
        return bean;
    }

    private static String normalize(String prefix) {
        if (prefix == null) {
            return "";
        }
        String p = prefix.trim();
        if (p.isEmpty() || p.equals("/")) {
            return "";
        }
        if (!p.startsWith("/")) {
            p = "/" + p;
        }
        while (p.endsWith("/")) {
            p = p.substring(0, p.length() - 1);
        }
        return p;
    }

    /**
     * 把 {@code /api/xxx} 的请求改写成 {@code /xxx} 后交给下游。
     */
    static final class ApiPrefixStripFilter implements Filter {

        private final String prefix;

        ApiPrefixStripFilter(String prefix) {
            this.prefix = prefix;
        }

        @Override
        public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
                throws IOException, ServletException {
            if (prefix.isEmpty() || !(request instanceof HttpServletRequest httpRequest)) {
                chain.doFilter(request, response);
                return;
            }
            String uri = httpRequest.getRequestURI();
            String contextPath = httpRequest.getContextPath();
            String pathWithinApp = contextPath.isEmpty() ? uri : uri.substring(contextPath.length());

            if (!pathWithinApp.equals(prefix) && !pathWithinApp.startsWith(prefix + "/")) {
                chain.doFilter(request, response);
                return;
            }

            String stripped = pathWithinApp.substring(prefix.length());
            if (stripped.isEmpty()) {
                stripped = "/";
            }
            chain.doFilter(new StrippedRequest(httpRequest, contextPath, stripped), response);
        }
    }

    /**
     * 只改写路径相关的几个方法，query string / header / body / 参数原样透传。
     */
    static final class StrippedRequest extends HttpServletRequestWrapper {

        private final String contextPath;
        private final String strippedPath;

        StrippedRequest(HttpServletRequest request, String contextPath, String strippedPath) {
            super(request);
            this.contextPath = contextPath;
            this.strippedPath = strippedPath;
        }

        @Override
        public String getRequestURI() {
            return contextPath + strippedPath;
        }

        @Override
        public String getServletPath() {
            return strippedPath;
        }

        @Override
        public String getPathInfo() {
            return null;
        }

        @Override
        public StringBuffer getRequestURL() {
            StringBuffer url = super.getRequestURL();
            String original = url.toString();
            String originalPath = super.getRequestURI();
            int idx = original.indexOf(originalPath);
            if (idx < 0) {
                return url;
            }
            return new StringBuffer(original.substring(0, idx))
                    .append(contextPath).append(strippedPath)
                    .append(original.substring(idx + originalPath.length()));
        }
    }
}