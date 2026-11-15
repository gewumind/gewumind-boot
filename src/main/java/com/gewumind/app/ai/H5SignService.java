package com.gewumind.app.ai;

import jakarta.annotation.PostConstruct;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.List;

/**
 * H5 接入链接签名（Ed25519，按部署自动生成 + 周期轮换）。
 *
 * <p>密钥不为代码常量：每个部署首次启动自动生成唯一密钥对，存于 sys_configure（配置中心隐藏）。
 * 每 {@code ai.h5.sign.rotate-days} 天自动轮换；轮换后保留上一把公钥 24 小时用于验签，
 * 避免已签发（≤24h）的链接立即失效。私钥永不对外。
 */
@Service
public class H5SignService {

    private static final String K_PRIV = "ai.h5.sign.private";
    private static final String K_PUB = "ai.h5.sign.public";
    private static final String K_PREV = "ai.h5.sign.public.prev";
    private static final String K_ROTATED = "ai.h5.sign.rotatedAt";
    private static final String K_DAYS = "ai.h5.sign.rotate-days";
    private static final long GRACE_SEC = 86400L;

    private final JdbcTemplate jdbc;
    private volatile KeyPair cached;
    private volatile String prevPublic;
    private volatile long rotatedAt;
    private volatile long lastCheck;

    public H5SignService(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    /** 启动即确保本部署有密钥（首启自动生成）。 */
    @PostConstruct
    public void init() {
        try {
            keyPair();
        } catch (Exception ignored) {
        }
    }

    public synchronized KeyPair keyPair() {
        long now = System.currentTimeMillis();
        if (cached == null) {
            load();
        } else if (now - lastCheck > 300_000L) {
            lastCheck = now;
            maybeRotate();
        }
        return cached;
    }

    private void load() {
        try {
            String priv = read(K_PRIV);
            String pub = read(K_PUB);
            prevPublic = read(K_PREV);
            rotatedAt = readLong(K_ROTATED, 0);
            if (priv != null && pub != null && !priv.isBlank() && !pub.isBlank()) {
                cached = keyPairFrom(priv, pub);
                lastCheck = System.currentTimeMillis();
                if (rotatedAt <= 0) {
                    rotatedAt = System.currentTimeMillis() / 1000L;
                    upsert(K_ROTATED, String.valueOf(rotatedAt), "H5签名密钥轮换时间");
                }
                return;
            }
        } catch (Exception ignored) {
        }
        generate(true);
    }

    private void maybeRotate() {
        long days = readLong(K_DAYS, 7);
        if (days <= 0) return;
        long due = rotatedAt + days * 86400L;
        if (System.currentTimeMillis() / 1000L >= due) {
            generate(false);
        }
    }

    /** 生成新密钥对；first=true 表示首次生成（无上一把公钥）。 */
    private void generate(boolean first) {
        try {
            KeyPairGenerator gen = KeyPairGenerator.getInstance("Ed25519");
            KeyPair kp = gen.generateKeyPair();
            String priv = Base64.getEncoder().encodeToString(kp.getPrivate().getEncoded());
            String pub = Base64.getEncoder().encodeToString(kp.getPublic().getEncoded());
            String prev = first ? null : (cached == null ? null : Base64.getEncoder().encodeToString(cached.getPublic().getEncoded()));
            long now = System.currentTimeMillis() / 1000L;
            upsert(K_PRIV, priv, "H5签名私钥(勿外泄)");
            upsert(K_PUB, pub, "H5签名公钥");
            if (prev != null) upsert(K_PREV, prev, "H5签名公钥(上一个,24h验签)");
            upsert(K_ROTATED, String.valueOf(now), "H5签名密钥轮换时间");
            cached = kp;
            prevPublic = prev;
            rotatedAt = now;
            lastCheck = System.currentTimeMillis();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public synchronized String regenerate() {
        generate(false);
        return publicKeyBase64();
    }

    public String publicKeyBase64() {
        return Base64.getEncoder().encodeToString(keyPair().getPublic().getEncoded());
    }

    public String sign(String username, long exp) {
        try {
            Signature s = Signature.getInstance("Ed25519");
            s.initSign(keyPair().getPrivate());
            s.update((username + "|" + exp).getBytes(StandardCharsets.UTF_8));
            return Base64.getEncoder().encodeToString(s.sign());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public boolean verify(String username, String expStr, String sig) {
        if (username == null || username.isBlank() || expStr == null || sig == null) return false;
        long exp;
        try {
            exp = Long.parseLong(expStr.trim());
        } catch (Exception e) {
            return false;
        }
        if (exp < System.currentTimeMillis() / 1000L) return false;
        byte[] data = (username + "|" + exp).getBytes(StandardCharsets.UTF_8);
        byte[] sigBytes;
        try {
            sigBytes = Base64.getDecoder().decode(sig.trim());
        } catch (Exception e) {
            return false;
        }
        if (verifyWith(keyPair().getPublic(), data, sigBytes)) return true;
        // 轮换后 24h 内允许用上一把公钥验签
        long now = System.currentTimeMillis() / 1000L;
        if (prevPublic != null && !prevPublic.isBlank() && now - rotatedAt <= GRACE_SEC) {
            try {
                PublicKey prev = publicKeyFrom(prevPublic);
                return verifyWith(prev, data, sigBytes);
            } catch (Exception ignored) {
            }
        }
        return false;
    }

    private static boolean verifyWith(PublicKey pk, byte[] data, byte[] sig) {
        try {
            Signature s = Signature.getInstance("Ed25519");
            s.initVerify(pk);
            s.update(data);
            return s.verify(sig);
        } catch (Exception e) {
            return false;
        }
    }

    private static KeyPair keyPairFrom(String priv, String pub) throws Exception {
        KeyFactory kf = KeyFactory.getInstance("Ed25519");
        PrivateKey p = kf.generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(priv)));
        PublicKey q = kf.generatePublic(new X509EncodedKeySpec(Base64.getDecoder().decode(pub)));
        return new KeyPair(q, p);
    }

    private static PublicKey publicKeyFrom(String pub) throws Exception {
        KeyFactory kf = KeyFactory.getInstance("Ed25519");
        return kf.generatePublic(new X509EncodedKeySpec(Base64.getDecoder().decode(pub)));
    }

    private String read(String key) {
        try {
            List<String> v = jdbc.queryForList(
                    "SELECT configure_value FROM sys_configure WHERE configure_key = ? AND is_del = 0",
                    String.class, key);
            return (v == null || v.isEmpty()) ? null : v.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    private long readLong(String key, long def) {
        String v = read(key);
        if (v == null || v.isBlank()) return def;
        try {
            return Long.parseLong(v.trim());
        } catch (Exception e) {
            return def;
        }
    }

    private void upsert(String key, String value, String name) {
        if (read(key) == null) {
            try {
                jdbc.update("INSERT INTO sys_configure(id,configure_value,configure_key,configure_name,configure_condition,configure_type,configure_desc_ribe,sort_order,is_del,create_by,create_date) " +
                        "VALUES(?,?,?,?,NULL,'1','H5接入签名密钥（勿外泄）',996,0,NULL,NOW())", "cfg-" + key, value, key, name);
                return;
            } catch (Exception ignored) {
            }
        }
        try {
            jdbc.update("UPDATE sys_configure SET configure_value = ?, is_del = 0 WHERE configure_key = ?", value, key);
        } catch (Exception ignored) {
        }
    }
}
