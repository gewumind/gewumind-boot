#!/usr/bin/env bash
# 验证发布产物的 Ed25519 分离签名（公钥 gewumind-release.pub）
# 用法: scripts/verify-signature.sh <file> [sig] [pub]
set -euo pipefail

FILE="${1:?用法: verify-signature.sh <file> [sig] [pub]}"
SIG="${2:-$FILE.sig}"
PUB="${3:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/gewumind-release.pub}"

command -v openssl >/dev/null || { echo "verify-signature: 需要 openssl" >&2; exit 2; }
[ -f "$FILE" ] || { echo "verify-signature: 文件不存在: $FILE" >&2; exit 2; }
[ -f "$SIG" ] || { echo "verify-signature: 签名不存在: $SIG" >&2; exit 2; }
[ -f "$PUB" ] || { echo "verify-signature: 公钥不存在: $PUB" >&2; exit 2; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
base64 -d "$PUB" > "$TMP/pub.der"
base64 -d "$SIG" > "$TMP/sig.bin"
openssl pkey -pubin -inform DER -in "$TMP/pub.der" -out "$TMP/pub.pem" 2>/dev/null
openssl pkeyutl -verify -pubin -inkey "$TMP/pub.pem" -rawin -in "$FILE" -sigfile "$TMP/sig.bin"
echo "verify-signature: OK ($FILE)"
