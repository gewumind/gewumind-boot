package com.gewumind.app.voice;

import cn.dev33.satoken.stp.StpUtil;
import com.gewumind.boot.configuration.KernelMessages;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gewumind.app.ai.H5SignService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.Duration;
import java.util.HexFormat;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * 第三方语音代理（OpenAI 兼容协议）。
 *
 * <p>端点（经 {@code /api} 前缀剥离后）：
 * <ul>
 *   <li>{@code GET  /system/ai-voice/status} —— 返回 TTS/ASR 是否已配置（不含密钥）</li>
 *   <li>{@code POST /system/ai-voice/tts}    —— body {@code {text, voice?}}，返回音频字节</li>
 *   <li>{@code POST /system/ai-voice/asr}    —— multipart {@code file}，返回 {@code {success,text}}</li>
 * </ul>
 *
 * <p>配置来自 {@code sys_configure} 的 {@code ai.tts.config} / {@code ai.asr.config}（JSON）。
 * 密钥只在服务端使用，不下发浏览器；未配置时前端回退到浏览器 Web Speech API。
 */
@RestController
@RequestMapping("/system/ai-voice")
public class AiVoiceController {

    private static final Logger log = LoggerFactory.getLogger(AiVoiceController.class);
    private static final ObjectMapper json = new ObjectMapper();
    private static final String DEFAULT_ENDPOINT = "https://api.openai.com";

    private final JdbcTemplate jdbc;
    private final H5SignService signService;
    private final HttpClient http = HttpClient.newBuilder()
            .connectTimeout(Duration.ofSeconds(15))
            .build();

    public AiVoiceController(JdbcTemplate jdbc, H5SignService signService) {
        this.jdbc = jdbc;
        this.signService = signService;
    }

    // ---------------------------------------------------------------- 状态

    @GetMapping("/status")
    public Map<String, Object> status() {
        Map<String, Object> ttsCfg = cfg("ai.tts.config");
        Map<String, Object> asrCfg = cfg("ai.asr.config");

        Map<String, Object> tts = new LinkedHashMap<>();
        tts.put("enabled", enabled(ttsCfg));
        tts.put("provider", provider(ttsCfg));
        tts.put("voice", str(ttsCfg.get("voice"), "alloy"));
        tts.put("format", str(ttsCfg.get("format"), "mp3"));

        Map<String, Object> asr = new LinkedHashMap<>();
        asr.put("enabled", enabled(asrCfg));
        asr.put("provider", provider(asrCfg));
        asr.put("language", str(asrCfg.get("language"), "zh"));

        Map<String, Object> data = new LinkedHashMap<>();
        data.put("tts", tts);
        data.put("asr", asr);
        return Map.of("success", true, "data", data);
    }

    // ---------------------------------------------------------------- TTS

    @PostMapping("/tts")
    public ResponseEntity<byte[]> tts(@RequestBody Map<String, Object> body) {
        String username = body == null ? null : str(body.get("username"), null);
        String exp = body == null ? null : str(body.get("exp"), null);
        String sig = body == null ? null : str(body.get("sig"), null);
        if (!authorized(username, exp, sig)) return error(401, KernelMessages.legacy("未登录或接入链接无效"));
        Map<String, Object> c = cfg("ai.tts.config");
        if (!enabled(c)) return error(400, "TTS 未启用，请在配置中心开启");

        String text = str(body.get("text"), null);
        if (text == null || text.isBlank()) return error(400, "text 不能为空");

        String endpoint = base(str(c.get("endpoint"), DEFAULT_ENDPOINT));
        String apiKey = str(c.get("api-key"), "");
        String format = str(c.get("format"), "mp3");
        boolean miniMax = "minimax".equalsIgnoreCase(str(c.get("provider"), "")) || isMiniMax(endpoint);

        if (miniMax) {
            String model = str(c.get("model"), "speech-2.8-hd");
            String voice = str(body == null ? null : body.get("voice"), str(c.get("voice"), "male-qn-jingying"));
            Map<String, Object> voiceSetting = new LinkedHashMap<>();
            voiceSetting.put("voice_id", voice);
            Object speed = c.get("speed");
            if (speed != null && !String.valueOf(speed).isBlank()) voiceSetting.put("speed", speed);
            Object vol = c.get("vol");
            if (vol != null && !String.valueOf(vol).isBlank()) voiceSetting.put("vol", vol);
            Object pitch = c.get("pitch");
            if (pitch != null && !String.valueOf(pitch).isBlank()) voiceSetting.put("pitch", pitch);

            Map<String, Object> audioSetting = new LinkedHashMap<>();
            audioSetting.put("format", format);
            audioSetting.put("sample_rate", 32000);
            audioSetting.put("bitrate", 128000);
            audioSetting.put("channel", 1);

            Map<String, Object> payload = new LinkedHashMap<>();
            payload.put("model", model);
            payload.put("text", text);
            payload.put("voice_setting", voiceSetting);
            payload.put("audio_setting", audioSetting);
            payload.put("output_format", "hex");
            payload.put("stream", false);
            payload.put("language_boost", "auto");

            try {
                String bodyJson = json.writeValueAsString(payload);
                HttpRequest req = HttpRequest.newBuilder(URI.create(endpoint + "/v1/t2a_v2"))
                        .timeout(Duration.ofSeconds(60))
                        .header("Authorization", "Bearer " + apiKey)
                        .header("Content-Type", "application/json")
                        .POST(HttpRequest.BodyPublishers.ofString(bodyJson))
                        .build();
                HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString(StandardCharsets.UTF_8));
                if (resp.statusCode() / 100 != 2) {
                    return error(502, "MiniMax TTS 上游错误(" + resp.statusCode() + "): " + truncate(resp.body()));
                }
                Map<?, ?> result = json.readValue(resp.body(), Map.class);
                Object br = result.get("base_resp");
                if (br instanceof Map<?, ?> bm) {
                    Object code = bm.get("status_code");
                    if (code != null && !"0".equals(String.valueOf(code))) {
                        return error(502, "MiniMax TTS 失败: " + truncate(String.valueOf(bm.get("status_msg"))));
                    }
                }
                Object data = result.get("data");
                if (!(data instanceof Map<?, ?> dm)) {
                    return error(502, "MiniMax TTS 返回缺少 data");
                }
                String hex = dm.get("audio") == null ? "" : String.valueOf(dm.get("audio"));
                if (hex.isBlank()) {
                    String url = dm.get("audio_url") == null ? "" : String.valueOf(dm.get("audio_url"));
                    return error(502, "MiniMax TTS 返回缺少 audio" + (url.isBlank() ? "" : "（audio_url: " + url + "）"));
                }
                byte[] audio = HexFormat.of().parseHex(hex);
                MediaType mt = "wav".equalsIgnoreCase(format) ? MediaType.parseMediaType("audio/wav")
                        : MediaType.parseMediaType("audio/mpeg");
                return ResponseEntity.ok().contentType(mt).body(audio);
            } catch (Exception e) {
                log.warn("MiniMax TTS 调用失败", e);
                return error(502, "MiniMax TTS 调用失败: " + e.getMessage());
            }
        }

        String model = str(c.get("model"), "tts-1");
        String voice = str(body.get("voice"), str(c.get("voice"), "alloy"));

        Map<String, Object> payload = new LinkedHashMap<>();
        payload.put("model", model);
        payload.put("input", text);
        payload.put("voice", voice);
        payload.put("response_format", format);
        Object speed = c.get("speed");
        if (speed != null && !String.valueOf(speed).isBlank()) payload.put("speed", speed);

        try {
            String bodyJson = json.writeValueAsString(payload);
            HttpRequest req = HttpRequest.newBuilder(URI.create(endpoint + "/v1/audio/speech"))
                    .timeout(Duration.ofSeconds(60))
                    .header("Authorization", "Bearer " + apiKey)
                    .header("Content-Type", "application/json")
                    .header("Accept", "*/*")
                    .POST(HttpRequest.BodyPublishers.ofString(bodyJson))
                    .build();
            HttpResponse<byte[]> resp = http.send(req, HttpResponse.BodyHandlers.ofByteArray());
            if (resp.statusCode() / 100 != 2) {
                String msg = new String(resp.body(), StandardCharsets.UTF_8);
                return error(502, "TTS 上游错误(" + resp.statusCode() + "): " + truncate(msg));
            }
            MediaType mt = resp.headers().firstValue("content-type")
                    .map(v -> {
                        try { return MediaType.parseMediaType(v); }
                        catch (Exception e) { return MediaType.parseMediaType("audio/mpeg"); }
                    })
                    .orElse(MediaType.parseMediaType("audio/mpeg"));
            return ResponseEntity.ok().contentType(mt).body(resp.body());
        } catch (Exception e) {
            log.warn("TTS 调用失败", e);
            return error(502, "TTS 调用失败: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------- ASR

    @PostMapping(value = "/asr", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public Map<String, Object> asr(@RequestParam("file") MultipartFile file,
                                   @RequestParam(value = "language", required = false) String language,
                                   @RequestParam(value = "username", required = false) String username,
                                   @RequestParam(value = "exp", required = false) String exp,
                                   @RequestParam(value = "sig", required = false) String sig) {
        if (!authorized(username, exp, sig)) return Map.of("success", false, "message", KernelMessages.legacy("未登录或接入链接无效"));
        Map<String, Object> c = cfg("ai.asr.config");
        if (!enabled(c)) return Map.of("success", false, "message", "ASR 未启用，请在配置中心开启");
        if (file == null || file.isEmpty()) return Map.of("success", false, "message", "音频文件为空");

        String endpoint = base(str(c.get("endpoint"), DEFAULT_ENDPOINT));
        String apiKey = str(c.get("api-key"), "");
        String model = str(c.get("model"), "whisper-1");
        String lang = (language != null && !language.isBlank())
                ? language
                : str(c.get("language"), "zh");
        String prompt = str(c.get("prompt"), "");
        boolean miniMax = "minimax".equalsIgnoreCase(str(c.get("provider"), "")) || isMiniMax(endpoint);

        if (miniMax) {
            try {
                byte[] wav = toWav(file);
                String mmModel = str(c.get("model"), "asr-1.0");
                String boundary = "----GewuMind" + UUID.randomUUID().toString().replace("-", "");
                byte[] multipart = buildMultipartBytes(boundary, mmModel, "", "",
                        "audio.wav", "audio/wav", wav);
                HttpRequest.Builder builder = HttpRequest.newBuilder(URI.create(endpoint + "/v1/speech_to_text"))
                        .timeout(Duration.ofSeconds(120))
                        .header("Authorization", "Bearer " + apiKey)
                        .header("Content-Type", "multipart/form-data; boundary=" + boundary);
                if (lang != null && !lang.isBlank()) builder.header("language", lang);
                HttpResponse<String> resp = http.send(builder.POST(HttpRequest.BodyPublishers.ofByteArray(multipart)).build(),
                        HttpResponse.BodyHandlers.ofString(StandardCharsets.UTF_8));
                if (resp.statusCode() / 100 != 2) {
                    return Map.of("success", false, "message",
                            "MiniMax ASR 上游错误(" + resp.statusCode() + "): " + truncate(resp.body()));
                }
                Map<?, ?> m = json.readValue(resp.body(), Map.class);
                Object text = m.get("text");
                return Map.of("success", true, "text", text == null ? "" : String.valueOf(text));
            } catch (Exception e) {
                log.warn("MiniMax ASR 调用失败", e);
                return Map.of("success", false, "message", "MiniMax ASR 调用失败: " + e.getMessage());
            }
        }

        try {
            String boundary = "----GewuMind" + UUID.randomUUID().toString().replace("-", "");
            byte[] multipart = buildMultipart(boundary, model, lang, prompt, file);
            HttpRequest req = HttpRequest.newBuilder(URI.create(endpoint + "/v1/audio/transcriptions"))
                    .timeout(Duration.ofSeconds(120))
                    .header("Authorization", "Bearer " + apiKey)
                    .header("Content-Type", "multipart/form-data; boundary=" + boundary)
                    .POST(HttpRequest.BodyPublishers.ofByteArray(multipart))
                    .build();
            HttpResponse<String> resp = http.send(req, HttpResponse.BodyHandlers.ofString(StandardCharsets.UTF_8));
            if (resp.statusCode() / 100 != 2) {
                return Map.of("success", false, "message",
                        "ASR 上游错误(" + resp.statusCode() + "): " + truncate(resp.body()));
            }
            Map<?, ?> m = json.readValue(resp.body(), Map.class);
            Object text = m.get("text");
            return Map.of("success", true, "text", text == null ? "" : String.valueOf(text));
        } catch (Exception e) {
            log.warn("ASR 调用失败", e);
            return Map.of("success", false, "message", "ASR 调用失败: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------- 工具

    /** H5 用签名令牌（user+exp+sig）鉴权；无用户名时要求登录态。 */
    private boolean authorized(String username, String exp, String sig) {
        if (username != null && !username.isBlank()) {
            if (!signService.verify(username, exp, sig)) return false;
            try {
                List<Map<String, Object>> rows = jdbc.queryForList(
                        "SELECT id FROM sys_user WHERE username = ? AND is_del = 0", username.trim());
                return !rows.isEmpty();
            } catch (Exception e) {
                return false;
            }
        }
        return loggedIn();
    }

    private boolean loggedIn() {
        try {
            StpUtil.checkLogin();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private Map<String, Object> cfg(String key) {
        try {
            String v = jdbc.queryForObject(
                    "SELECT configure_value FROM sys_configure WHERE configure_key = ? AND is_del = 0",
                    String.class, key);
            if (v == null || v.isBlank()) return Map.of();
            return json.readValue(v, Map.class);
        } catch (Exception e) {
            return Map.of();
        }
    }

    private static boolean enabled(Map<String, Object> c) {
        Object v = c.get("enabled");
        if (v == null) return false;
        if (v instanceof Boolean b) return b;
        String s = String.valueOf(v).trim();
        return s.equalsIgnoreCase("true") || s.equals("1")
                || s.equalsIgnoreCase("on") || s.equalsIgnoreCase("yes");
    }

    private static String provider(Map<String, Object> c) {
        String p = str(c.get("provider"), "");
        if (!p.isBlank()) return p;
        String endpoint = str(c.get("endpoint"), "");
        return isMiniMax(endpoint) ? "minimax" : "openai-compatible";
    }

    private static boolean isMiniMax(String endpoint) {
        if (endpoint == null) return false;
        String e = endpoint.toLowerCase();
        return e.contains("minimax.cn") || e.contains("minimaxi.com") || e.contains("minimax.io");
    }

    private static String base(String endpoint) {
        String e = endpoint == null ? DEFAULT_ENDPOINT : endpoint.trim();
        if (e.isEmpty()) e = DEFAULT_ENDPOINT;
        while (e.endsWith("/")) e = e.substring(0, e.length() - 1);
        return e;
    }

    private static String str(Object v, String def) {
        if (v == null) return def;
        String s = String.valueOf(v).trim();
        return s.isEmpty() ? def : s;
    }

    private static String truncate(String s) {
        if (s == null) return "";
        s = s.replaceAll("\\s+", " ").trim();
        return s.length() > 300 ? s.substring(0, 300) + "…" : s;
    }

    private static ResponseEntity<byte[]> error(int status, String message) {
        try {
            byte[] body = json.writeValueAsBytes(Map.of("success", false, "message", message));
            return ResponseEntity.status(status)
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(body);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    private static byte[] buildMultipart(String boundary, String model, String language,
                                         String prompt, MultipartFile file) throws IOException {
        String filename = file.getOriginalFilename() == null ? "audio.webm" : file.getOriginalFilename();
        String contentType = file.getContentType() == null ? "application/octet-stream" : file.getContentType();
        return buildMultipartBytes(boundary, model, language, prompt, filename, contentType, file.getBytes());
    }

    private static byte[] buildMultipartBytes(String boundary, String model, String language,
                                              String prompt, String filename, String contentType,
                                              byte[] fileBytes) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        writeField(out, boundary, "model", model);
        if (language != null && !language.isBlank()) writeField(out, boundary, "language", language);
        if (prompt != null && !prompt.isBlank()) writeField(out, boundary, "prompt", prompt);
        writeField(out, boundary, "response_format", "json");

        out.write(("--" + boundary + "\r\n").getBytes(StandardCharsets.UTF_8));
        out.write(("Content-Disposition: form-data; name=\"file\"; filename=\"" + filename + "\"\r\n")
                .getBytes(StandardCharsets.UTF_8));
        out.write(("Content-Type: " + contentType + "\r\n\r\n").getBytes(StandardCharsets.UTF_8));
        out.write(fileBytes);
        out.write("\r\n".getBytes(StandardCharsets.UTF_8));
        out.write(("--" + boundary + "--\r\n").getBytes(StandardCharsets.UTF_8));
        return out.toByteArray();
    }

    private static byte[] toWav(MultipartFile file) throws Exception {
        Path in = Files.createTempFile("gewumind-asr-", ".input");
        Path out = Files.createTempFile("gewumind-asr-", ".wav");
        try {
            Files.write(in, file.getBytes());
            Process p = new ProcessBuilder("ffmpeg", "-y", "-loglevel", "error",
                    "-i", in.toString(), "-ar", "16000", "-ac", "1", "-f", "wav", out.toString())
                    .redirectErrorStream(true).start();
            byte[] log = p.getInputStream().readAllBytes();
            if (!p.waitFor(60, TimeUnit.SECONDS)) {
                p.destroyForcibly();
                throw new IOException("ffmpeg timeout");
            }
            if (p.exitValue() != 0) {
                throw new IOException("ffmpeg failed: " + new String(log, StandardCharsets.UTF_8));
            }
            return Files.readAllBytes(out);
        } finally {
            Files.deleteIfExists(in);
            Files.deleteIfExists(out);
        }
    }

    private static void writeField(ByteArrayOutputStream out, String boundary,
                                   String name, String value) throws IOException {
        out.write(("--" + boundary + "\r\n").getBytes(StandardCharsets.UTF_8));
        out.write(("Content-Disposition: form-data; name=\"" + name + "\"\r\n\r\n")
                .getBytes(StandardCharsets.UTF_8));
        out.write(value.getBytes(StandardCharsets.UTF_8));
        out.write("\r\n".getBytes(StandardCharsets.UTF_8));
    }
}
