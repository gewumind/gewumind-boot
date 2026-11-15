package com.gewumind.app.ai;

import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 公开应用信息（无需登录）：当前部署语言等，供登录页做中英文切换。
 *
 * <p>端点：{@code GET /system/app-info} → {@code {success:true,data:{lang:"zh"|"en"}}}。
 * 语言取自 {@code app.lang}（en profile 会设为 en），默认 zh。
 */
@RestController
@RequestMapping("/system")
public class AppInfoController {

    private final Environment env;

    public AppInfoController(Environment env) {
        this.env = env;
    }

    @GetMapping("/app-info")
    public Map<String, Object> info() {
        String lang = env.getProperty("app.lang", "zh");
        lang = lang == null ? "zh" : lang.trim().toLowerCase();
        if (!"en".equals(lang)) lang = "zh";
        boolean demoReadOnly = Boolean.parseBoolean(env.getProperty("app.demo.read-only", "false"));
        Map<String, Object> data = new LinkedHashMap<>();
        data.put("lang", lang);
        data.put("demoReadOnly", demoReadOnly);
        return Map.of("success", true, "data", data);
    }
}
