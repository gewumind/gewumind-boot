#!/usr/bin/env bash
# 验证发布产物的 Ed25519 分离签名
# 用法: scripts/verify-signature.sh <file> [sig] [pub]
# 不传 pub 时依次尝试 gewumind-release-2026.pub（v1.1.0+）与 gewumind-release.pub（v1.0.3）。
set -euo pipefail

FILE="${1:?用法: verify-signature.sh <file> [sig] [pub]}"
SIG="${2:-$FILE.sig}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

command -v openssl >/dev/null || { echo "verify-signature: 需要 openssl" >&2; exit 2; }
[ -f "$FILE" ] || { echo "verify-signature: 文件不存在: $FILE" >&2; exit 2; }
[ -f "$SIG" ] || { echo "verify-signature: 签名不存在: $SIG" >&2; exit 2; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
base64 -d "$SIG" > "$TMP/sig.bin"

verify_with() {
  local pub="$1"
  [ -f "$pub" ] || return 1
  base64 -d "$pub" > "$TMP/pub.der"
  openssl pkey -pubin -inform DER -in "$TMP/pub.der" -out "$TMP/pub.pem" 2>/dev/null || return 1
  openssl pkeyutl -verify -pubin -inkey "$TMP/pub.pem" -rawin \
    -in "$FILE" -sigfile "$TMP/sig.bin" >/dev/null 2>&1
}

if [[ -n "${3:-}" ]]; then
  verify_with "$3" || { echo "verify-signature: 验签失败 ($3)" >&2; exit 1; }
else
  if verify_with "$ROOT/gewumind-release-2026.pub"; then :
  elif verify_with "$ROOT/gewumind-release.pub"; then :
  else echo "verify-signature: 验签失败（已尝试新/旧公钥）" >&2; exit 1
  fi
fi

echo "verify-signature: OK ($FILE)"
