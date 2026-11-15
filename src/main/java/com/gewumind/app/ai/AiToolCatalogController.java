package com.gewumind.app.ai;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.configuration.KernelMessages;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * 全量 magic-api 接口目录（与「在线编程」里的接口列表一致）。
 *
 * <p>内核的 {@code /system/ai-tools/scan} 只返回"只读候选"（有读提示、无写提示），
 * 数量很少。这里直接枚举 magic-api 文件工作区 {@code api/} 下的全部接口，
 * 按 group 路径拼出完整 URL，并标记是否已被工具目录导入。
 *
 * <p>端点：{@code GET /system/ai-tools/catalog?keyword=&includeImported=false}
 */
@RestController
@RequestMapping("/system/ai-tools")
public class AiToolCatalogController {

    private static final Logger log = LoggerFactory.getLogger(AiToolCatalogController.class);
    private static final ObjectMapper json = new ObjectMapper();
    private static final String SEP = "================================";

    private final Environment env;
    private final JdbcTemplate jdbc;

    public AiToolCatalogController(Environment env, JdbcTemplate jdbc) {
        this.env = env;
        this.jdbc = jdbc;
    }

    @GetMapping("/catalog")
    public Map<String, Object> catalog(@RequestParam(value = "keyword", required = false) String keyword,
                                       @RequestParam(value = "includeImported", required = false, defaultValue = "false") boolean includeImported) {
        try {
            StpUtil.checkLogin();
        } catch (Exception e) {
            return Map.of("success", false, "message", KernelMessages.legacy("未登录"), "data", List.of());
        }
        try {
            Set<String> imported = importedKeySet();
            List<Map<String, Object>> all = enumerate();
            String kw = keyword == null ? "" : keyword.trim().toLowerCase();
            List<Map<String, Object>> out = new ArrayList<>();
            for (Map<String, Object> c : all) {
                String key = String.valueOf(c.get("method")) + " " + c.get("path");
                boolean imp = imported.contains(key);
                if (imp && !includeImported) continue;
                if (!kw.isEmpty()) {
                    String hay = (c.get("path") + " " + c.get("name") + " " + c.get("group") + " " + c.get("method")).toLowerCase();
                    if (!hay.contains(kw)) continue;
                }
                c.put("imported", imp);
                out.add(c);
            }
            return Map.of("success", true, "data", out, "total", out.size());
        } catch (Exception e) {
            log.warn("接口目录枚举失败: {}", e.getMessage());
            return Map.of("success", false, "message", String.valueOf(e.getMessage()), "data", List.of());
        }
    }

    private Set<String> importedKeySet() {
        try {
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT method, path FROM sys_ai_tool WHERE is_del = 0");
            Set<String> s = new HashSet<>();
            for (Map<String, Object> r : rows) {
                s.add(String.valueOf(r.get("method")).toUpperCase() + " " + String.valueOf(r.get("path")).trim());
            }
            return s;
        } catch (Exception e) {
            return new HashSet<>();
        }
    }

    private List<Map<String, Object>> enumerate() throws Exception {
        String loc = env.getProperty("magic-api.resource.location", "file:./data/zh/magic-api");
        String raw = loc.startsWith("file:") ? loc.substring("file:".length()) : loc;
        Path root = Paths.get(raw).toAbsolutePath().normalize();
        Path apiRoot = root.resolve("api");
        if (!Files.isDirectory(apiRoot)) return List.of();

        List<Path> groupFiles = new ArrayList<>();
        List<Path> apiFiles = new ArrayList<>();
        try (Stream<Path> walk = Files.walk(apiRoot)) {
            walk.filter(Files::isRegularFile).forEach(p -> {
                String fn = p.getFileName().toString();
                if ("group.json".equals(fn)) groupFiles.add(p);
                else if (fn.endsWith(".ms")) apiFiles.add(p);
            });
        }

        Map<String, Map<String, Object>> groups = new HashMap<>();
        for (Path gf : groupFiles) {
            try {
                Map<?, ?> m = json.readValue(Files.readString(gf), Map.class);
                String id = str(m.get("id"));
                if (id != null) groups.put(id, castMap(m));
            } catch (Exception ignored) {
            }
        }

        List<Map<String, Object>> out = new ArrayList<>();
        for (Path af : apiFiles) {
            try {
                Map<?, ?> m = parseHeader(af);
                if (m == null) continue;
                String name = str(m.get("name"));
                String apiPath = str(m.get("path"));
                String method = str(m.get("method"));
                String groupId = str(m.get("groupId"));
                if (apiPath == null) apiPath = "";
                if (method == null || method.isBlank()) method = "GET";

                List<String> pathParts = new ArrayList<>();
                List<String> nameParts = new ArrayList<>();
                String gid = groupId;
                Set<String> guard = new HashSet<>();
                while (gid != null && groups.containsKey(gid) && guard.add(gid)) {
                    Map<String, Object> g = groups.get(gid);
                    String gp = str(g.get("path"));
                    if (gp != null && !gp.isBlank()) pathParts.add(0, gp);
                    String gn = str(g.get("name"));
                    if (gn != null && !gn.isBlank()) nameParts.add(0, gn);
                    gid = str(g.get("parentId"));
                    if ("0".equals(gid)) break;
                }

                String full = String.join("", pathParts) + apiPath;
                full = full.replaceAll("//+", "/");
                if (!full.startsWith("/")) full = "/" + full;
                if (full.length() > 1 && full.endsWith("/")) full = full.substring(0, full.length() - 1);

                String script = readScript(af);
                Map<String, Object> c = new LinkedHashMap<>();
                c.put("name", name == null ? apiPath : name);
                c.put("path", full);
                c.put("method", method.toUpperCase());
                c.put("group", String.join(" / ", nameParts));
                c.put("description", draftDescription(m, name, script));
                c.put("paramsSchema", draftParamsSchema(m, script));
                c.put("responseSchema", draftResponseSchema(script));
                out.add(c);
            } catch (Exception ignored) {
            }
        }
        // 去重 + 排序
        Map<String, Map<String, Object>> uniq = new LinkedHashMap<>();
        for (Map<String, Object> c : out) {
            uniq.put(c.get("method") + " " + c.get("path"), c);
        }
        return uniq.values().stream()
                .sorted((a, b) -> String.valueOf(a.get("path")).compareTo(String.valueOf(b.get("path"))))
                .collect(Collectors.toList());
    }

    private static Map<?, ?> parseHeader(Path f) {
        try {
            String content = Files.readString(f);
            int idx = content.indexOf(SEP);
            String header = idx >= 0 ? content.substring(0, idx) : content;
            header = header.trim();
            if (header.isEmpty()) return null;
            return json.readValue(header, Map.class);
        } catch (Exception e) {
            return null;
        }
    }


    // ---------------- 草拟：说明 / 入参Schema / 返回说明 ----------------

    private static String readScript(Path f) {
        try {
            String c = Files.readString(f);
            int i = c.indexOf(SEP);
            return i >= 0 ? c.substring(i + SEP.length()) : "";
        } catch (Exception e) {
            return "";
        }
    }

    private static String draftDescription(Map<?, ?> m, String name, String script) {
        String d = str(m.get("description"));
        if (d != null && !d.isBlank()) return d.trim();
        return (name == null || name.isBlank()) ? "接口" : name;
    }

    private static String draftParamsSchema(Map<?, ?> m, String script) {
        Map<String, Object> props = new LinkedHashMap<>();
        List<String> required = new ArrayList<>();
        Object ps = m.get("parameters");
        if (ps instanceof List<?> list) {
            for (Object o : list) {
                if (!(o instanceof Map<?, ?> p)) continue;
                String n = str(p.get("name"));
                if (n == null || n.isBlank()) continue;
                Map<String, Object> prop = new LinkedHashMap<>();
                String type = str(p.get("type"));
                if (type == null) type = str(p.get("dataType"));
                prop.put("type", jsonType(type));
                String d = str(p.get("description"));
                if (d != null && !d.isBlank()) prop.put("description", d);
                props.put(n, prop);
                if (Boolean.TRUE.equals(p.get("required"))) required.add(n);
            }
        }
        java.util.regex.Matcher m1 = java.util.regex.Pattern.compile("#\\{\\s*([a-zA-Z0-9_]+)").matcher(script);
        while (m1.find()) props.putIfAbsent(m1.group(1), Map.of("type", "string"));
        java.util.regex.Matcher m2 = java.util.regex.Pattern.compile("body\\.([a-zA-Z0-9_]+)").matcher(script);
        while (m2.find()) props.putIfAbsent(m2.group(1), Map.of("type", "string"));

        Map<String, Object> schema = new LinkedHashMap<>();
        schema.put("type", "object");
        schema.put("properties", props);
        if (!required.isEmpty()) schema.put("required", required);
        try {
            return json.writeValueAsString(schema);
        } catch (Exception e) {
            return "{\"type\":\"object\",\"properties\":{}}";
        }
    }

    private static String draftResponseSchema(String script) {
        String sql = firstSql(script);
        List<String> cols = selectColumns(sql);
        if (!cols.isEmpty()) return (java.util.Locale.getDefault().getLanguage().startsWith("en") ? "Response fields: " : "返回字段: ") + String.join(", ", cols);
        return "返回结构化数据（字段以接口实际返回为准）";
    }

    private static String firstSql(String script) {
        if (script == null) return null;
        int idx = -1;
        for (String h : new String[]{"db.select", "db.page", "db.query"}) {
            int i = script.indexOf(h);
            if (i >= 0 && (idx < 0 || i < idx)) idx = i;
        }
        if (idx < 0) return null;
        // 支持三引号 """..."""、双引号 "..."、单引号 '...'
        int best = Integer.MAX_VALUE;
        String delim = null;
        int i1 = script.indexOf("\"\"\"", idx);
        if (i1 >= 0) { best = i1; delim = "\"\"\""; }
        int i2 = script.indexOf('"', idx);
        if (i2 >= 0 && i2 < best) { best = i2; delim = "\""; }
        int i3 = script.indexOf('\'', idx);
        if (i3 >= 0 && i3 < best) { best = i3; delim = "'"; }
        if (delim == null) return null;
        int end = script.indexOf(delim, best + delim.length());
        if (end < 0) return null;
        return script.substring(best + delim.length(), end);
    }

    private static List<String> selectColumns(String sql) {
        if (sql == null || sql.isBlank()) return List.of();
        String s = sql.replaceAll("\\s+", " ").trim();
        String lower = s.toLowerCase();
        int sel = lower.indexOf("select ");
        int from = lower.indexOf(" from ");
        if (sel < 0 || from < 0 || from <= sel) return List.of();
        String colsPart = s.substring(sel + 7, from);
        List<String> out = new ArrayList<>();
        for (String part : colsPart.split(",")) {
            String p2 = part.trim();
            if (p2.isEmpty()) continue;
            String lp = p2.toLowerCase();
            if (lp.startsWith("distinct ")) p2 = p2.substring(9).trim();
            String alias;
            int as = p2.toLowerCase().indexOf(" as ");
            if (as >= 0) {
                alias = p2.substring(as + 4).trim();
            } else if (p2.contains(".") && !p2.contains(" ")) {
                alias = p2.substring(p2.lastIndexOf('.') + 1).trim();
            } else {
                String[] tok = p2.split("\\s+");
                alias = tok[tok.length - 1];
                int dot = alias.lastIndexOf('.');
                if (dot >= 0) alias = alias.substring(dot + 1);
            }
            alias = alias.replaceAll("[^a-zA-Z0-9_].*$", "");
            if (!alias.isBlank()) out.add(alias);
            if (out.size() >= 20) break;
        }
        return out;
    }

    private static String jsonType(String magicType) {
        if (magicType == null) return "string";
        return switch (magicType.toLowerCase()) {
            case "int", "integer", "long", "short", "byte" -> "integer";
            case "double", "float", "number", "decimal", "bigdecimal" -> "number";
            case "boolean", "bool" -> "boolean";
            default -> "string";
        };
    }

    private static String str(Object o) {
        return o == null ? null : String.valueOf(o);
    }

    @SuppressWarnings("unchecked")
    private static Map<String, Object> castMap(Map<?, ?> m) {
        return (Map<String, Object>) m;
    }
}
