#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# 生成自签 TLS 证书（PKCS12 格式，Spring Boot 可直接使用）
# Generate a self-signed TLS certificate (PKCS12, directly usable by Spring Boot)
#
# 内网部署用这个够用。正式环境请采购或用内网 CA 签发的受信任证书。
# Good enough for intranet deployments. In production use a trusted certificate,
# purchased or issued by an internal CA.
#
# 用法 / Usage:
#   bash scripts/gen-ssl-cert.sh                        # 输出到 ./certs
#   bash scripts/gen-ssl-cert.sh /opt/gewumind/certs    # 指定输出目录
#   bash scripts/gen-ssl-cert.sh ./certs 3650           # 指定有效期（天）/ validity in days
#   bash scripts/gen-ssl-cert.sh ./certs 3650 localhost app.example.com
#
# 产物 / Output:
#   <目录>/keystore.p12    交给 Spring Boot 的 server.ssl.key-store
#   <目录>/README.txt      怎么用 / how to use it
#
# 生成后填进 application.yml：
#   server:
#     ssl:
#       enabled: true
#       key-store: file:./certs/keystore.p12
#       key-store-password: <脚本打印的密码>
#       key-store-type: PKCS12
#       key-alias: tomcat
#
# ⚠ 自签证书：浏览器会提示"不受信任"，微信小程序正式版也要求受信任证书，
#   自签仅适合内网联调与验证部署流程。
# -----------------------------------------------------------------------------
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"

OUT_DIR="${1:-${PROJECT_DIR}/certs}"
DAYS="${2:-3650}"
shift 2 2>/dev/null || true
# 剩下的参数都是额外 SAN；没给就用本机 hostname + localhost
if [ "$#" -gt 0 ]; then
  HOSTNAMES="$*"
else
  HOSTNAMES="localhost $(hostname)"
fi

KEY_ALIAS="tomcat"
STORE_PASS="$(head -c 18 /dev/urandom | base64 | tr -dc 'A-Za-z0-9' | head -c 16)"
KEYPASS="${STORE_PASS}"

command -v openssl >/dev/null || { echo "ERROR: 需要 openssl" >&2; exit 1; }

mkdir -p "${OUT_DIR}"
cd "${OUT_DIR}"

# 写 SAN 扩展：现代浏览器/小程序不再认 CN，必须有 subjectAltName
cat > san.cnf <<EOF
[req]
distinguished_name = req_distinguished_name
x509_extensions = v3_req
prompt = no

[req_distinguished_name]
CN = ${HOSTNAMES%% *}

[v3_req]
basicConstraints = CA:FALSE
keyUsage = digitalSignature, keyEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names

[alt_names]
EOF

i=1
for h in ${HOSTNAMES}; do
  # IP 写 IP.1，主机名写 DNS.1
  if echo "${h}" | grep -qE '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$'; then
    echo "IP.${i} = ${h}" >> san.cnf
  else
    echo "DNS.${i} = ${h}" >> san.cnf
  fi
  i=$((i+1))
done

echo ">>> 生成自签证书"
echo "    输出目录: ${OUT_DIR}"
echo "    有效期  : ${DAYS} 天"
echo "    域名    : ${HOSTNAMES}"

openssl req -x509 -nodes -newkey rsa:2048 \
  -keyout server.key -out server.crt \
  -days "${DAYS}" -sha256 \
  -config san.cnf \
  -passout "pass:${KEYPASS}" 2>/dev/null

# 打成 PKCS12，alias 必须是 tomcat（与 application.yml 里 key-alias 一致）
openssl pkcs12 -export \
  -in server.crt -inkey server.key \
  -name "${KEY_ALIAS}" \
  -out keystore.p12 \
  -passout "pass:${STORE_PASS}" 2>/dev/null

rm -f san.cnf

chmod 600 keystore.p12 server.key

cat > README.txt <<EOF
自签证书已生成
==================================================

文件
  keystore.p12   Spring Boot server.ssl.key-store 用的（PKCS12）
  server.key     私钥，勿外传
  server.crt     证书

application.yml 配置
  server:
    ssl:
      enabled: true
      key-store: file:${OUT_DIR}/keystore.p12
      key-store-password: ${STORE_PASS}
      key-store-type: PKCS12
      key-alias: ${KEY_ALIAS}

  改完重启生效。

说明
  · 浏览器会提示"证书不受信任"，点"继续访问"即可。
  · 微信小程序正式版不接受自签证书，正式环境请换成受信任证书。
  · 重新生成会覆盖旧证书，已部署的客户端需要重新信任。
EOF

echo ""
echo "✓ 完成"
echo ""
echo "  文件      ${OUT_DIR}/keystore.p12"
echo "  别名      ${KEY_ALIAS}"
echo "  密码      ${STORE_PASS}"
echo ""
echo "  application.yml 里填："
echo "    ssl:"
echo "      enabled: true"
echo "      key-store: file:${OUT_DIR}/keystore.p12"
echo "      key-store-password: ${STORE_PASS}"
echo "      key-store-type: PKCS12"
echo "      key-alias: ${KEY_ALIAS}"
echo ""
echo "  ⚠ 自签证书浏览器会提示不受信任；小程序正式版需要受信任证书"