package com.gewumind.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * GewuMind Boot 应用启动类。
 *
 * <p>本工程把 {@code gewumind-boot} 内核当作库依赖：
 * <ul>
 *   <li>{@code com.gewumind.boot} —— 内核包（magic-api 容器、sa-token、SSO、前端 SPA 承载），
 *       必须扫到，否则 magic-api 脚本 / 登录鉴权 / 前端路由 fallback 都失效。</li>
 *   <li>{@code com.gewumind.app} —— 本工程的业务包（配置与启动适配）。</li>
 * </ul>
 *
 * <p>启动类不在 {@code com.gewumind.boot} 下，所以必须显式声明 scanBasePackages。
 *
 * <p>资源加载顺序：Spring Boot 的 fat jar classpath 里 {@code BOOT-INF/classes/}
 * 排在 {@code BOOT-INF/lib/*.jar} 之前，所以本工程的 {@code application.yml}、
 * {@code static/} 会覆盖内核 jar 里的同名资源（内核 jar 安装时已剔除这些文件，
 * 见 {@code scripts/install-gewumind-dep.sh}）。
 *
* <p>内核修掉了 SSO 的重复映射（删除空壳 Controller），但连带丢了 {@code /sso/login}
 * 与 {@code /sso/logout} —— 这两个端点目前由本工程
 * {@link com.gewumind.app.sso.SsoClientEntryController} 提供，不要删。
 */
@SpringBootApplication(scanBasePackages = {"com.gewumind.app", "com.gewumind"})
public class GewuMindBootApp {

    public static void main(String[] args) {
        SpringApplication.run(GewuMindBootApp.class, args);
    }
}