package com.gewumind.app.sso;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.sso.SsoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * SSO 客户端入口：跳转 IdP 授权页 / 退出登录。
 *
 * <h3>为什么这两个端点在本工程</h3>
 * 内核曾经有两个 Controller 都注册 {@code GET /sso/callback}：
 * <ul>
 *   <li>{@code SsoClientController} —— 空壳，callback 只 {@code redirect:/}，不发 token</li>
 *   <li>{@code SsoClientCallbackController} —— 真正的实现（换 token、拉 userinfo、用户同步）</li>
 * </ul>
 * {@code RequestMappingHandlerMapping} 初始化会抛 {@code Ambiguous mapping}，容器直接起不来。
 * 内核后来的修法是<b>把空壳那个 Controller 整个删掉</b>：
 * 重复映射没有了，但空壳上的 {@code /sso/login} 和 {@code /sso/logout}
 * <b>没有随之迁移到任何地方</b>——内核里现在只剩
 * {@link com.gewumind.boot.sso.SsoClientCallbackController} 一个 {@code @RequestMapping("/sso")} 类。
 *
 * <p>也就是说：<b>{@code /sso/callback} 归内核，本类的 {@code /sso/login} 与
 * {@code /sso/logout} 目前全系统只有本类提供</b>。删掉本类，这两个端点会直接 404。
 *
 * <p>逻辑与内核原实现一致：{@code /sso/login} 未启用 SSO 或配置不全时回本地登录页；
 * {@code /sso/logout} 走 Sa-Token 登出后回本地登录页。
 *
 * <p>SSO 是否启用由配置中心 {@code sys_configure.sso.enable} 决定（默认 false）。
 *
 * <p>若内核后续把这两个端点补回自己的 Controller，<b>务必连同本类一起删除</b>——
 * 两边同时映射会重新触发 {@code Ambiguous mapping}。
 */
@Controller
@RequestMapping("/sso")
public class SsoClientEntryController {

    private final SsoService ssoService;

    @Autowired
    public SsoClientEntryController(SsoService ssoService) {
        this.ssoService = ssoService;
    }

    /**
     * 跳转 IdP 授权页。未启用 SSO 或配置不全时回本地登录页。
     */
    @GetMapping("/login")
    public String login() {
        if (!ssoService.isSsoEnable()) {
            return "redirect:/login";
        }
        String serverUrl = ssoService.getServerUrl();
        String clientId = ssoService.getClientId();
        String redirectUri = ssoService.getRedirectUri();
        if (!StringUtils.hasText(serverUrl)
                || !StringUtils.hasText(clientId)
                || !StringUtils.hasText(redirectUri)) {
            return "redirect:/login";
        }
        String url = serverUrl.replaceAll("/+$", "") + "/oauth2/authorize"
                + "?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&state=sso";
        return "redirect:" + url;
    }

    @GetMapping("/logout")
    public String logout() {
        StpUtil.logout();
        return "redirect:/login";
    }
}