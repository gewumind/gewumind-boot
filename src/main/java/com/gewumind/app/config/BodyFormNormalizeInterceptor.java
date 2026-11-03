package com.gewumind.app.config;

import org.ssssssss.magicapi.core.context.RequestEntity;
import org.ssssssss.magicapi.core.interceptor.RequestInterceptor;
import org.ssssssss.script.MagicScriptContext;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 请求参数归一：让 magic-api 脚本不论前端用 {@code application/json} 还是
 * {@code application/x-www-form-urlencoded}，都能同时通过 {@code body.xxx} 和顶层变量取到参数。
 *
 * <h3>背景</h3>
 * magic-api 2.2.2 的 {@code RequestHandler} 只做了一半：
 * <ul>
 *   <li>query / form 参数 → {@code @RequestParam} 绑定成<b>顶层变量</b>，不放进 {@code body}；</li>
 *   <li>JSON body → 解析后只放进 {@code body}，<b>不</b>展开成顶层变量。</li>
 * </ul>
 * 于是 1.2.x 脚本（大量读 {@code body.month} 等）遇到前端 {@code $common.post}（form）时
 * {@code body} 为 null；而 2.0 脚本（读顶层变量）遇到 JSON 请求时又取不到值。
 *
 * <h3>本拦截器</h3>
 * 在脚本执行前补全上下文：
 * <ul>
 *   <li>{@code body} 为空且存在 form/query 参数 → 把参数表设为 {@code body}；</li>
 *   <li>{@code body} 是 Map（JSON）→ 把其中尚未存在的键补成顶层变量。</li>
 * </ul>
 * 只补不覆盖：已存在的上下文变量（{@code cookie}/{@code header}/{@code session} 等内置变量、
 * 以及 query/form 已绑定的同名变量）保持原值，避免遮蔽。
 *
 * <p>magic-api starter 会把所有 {@link RequestInterceptor} 类型的 spring bean 自动注册到
 * {@code MagicConfiguration}，因此本类无需额外装配。
 */
@Component
public class BodyFormNormalizeInterceptor implements RequestInterceptor {

    @Override
    public Object preHandle(RequestEntity requestEntity) {
        MagicScriptContext context = requestEntity.getMagicScriptContext();
        if (context == null) {
            return null;
        }
        Object body = requestEntity.getRequestBody();
        Map<String, Object> parameters = requestEntity.getParameters();
        if (body == null) {
            // form / query 请求：magic-api 只把参数绑成顶层变量，这里补一份 body
            if (parameters != null && !parameters.isEmpty()) {
                context.set("body", parameters);
            }
        } else if (body instanceof Map<?, ?> map) {
            // JSON 请求：magic-api 只放进 body，这里把字段补成顶层变量（不覆盖已有变量）
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                if (entry.getKey() == null) {
                    continue;
                }
                String name = String.valueOf(entry.getKey());
                if (context.get(name) == null) {
                    context.set(name, entry.getValue());
                }
            }
        }
        return null;
    }
}
