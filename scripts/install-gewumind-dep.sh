#!/usr/bin/env bash
# 将内核 jar + pom 安装到本工程 libs/（本地 Maven 仓）
#
# 用法:
#   scripts/install-gewumind-dep.sh <jar> <pom> [--version X.Y.Z] [--dest DIR] [--sig FILE]
#
# 只处理二进制 jar/pom，不涉及内核源码。
# .sig 可选；不传时若 jar 旁存在 <jar>.sig 会一起复制。
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
JAR=""
POM=""
VERSION=""
DEST="$ROOT/libs"
SIG=""

usage() {
  sed -n '2,10p' "$0" | sed 's/^# \{0,1\}//'
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --version) VERSION="$2"; shift 2 ;;
    --dest) DEST="$2"; shift 2 ;;
    --sig) SIG="$2"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    -*)
      echo "install-gewumind-dep: 未知参数 $1" >&2; usage >&2; exit 2 ;;
    *)
      if [[ -z "$JAR" ]]; then JAR="$1"
      elif [[ -z "$POM" ]]; then POM="$1"
      else echo "install-gewumind-dep: 多余参数 $1" >&2; exit 2
      fi
      shift ;;
  esac
done

[[ -n "$JAR" && -f "$JAR" ]] || { echo "install-gewumind-dep: 缺少/找不到 jar" >&2; usage >&2; exit 2; }
[[ -n "$POM" && -f "$POM" ]] || { echo "install-gewumind-dep: 缺少/找不到 pom" >&2; usage >&2; exit 2; }
command -v mvn >/dev/null || { echo "install-gewumind-dep: 需要 mvn" >&2; exit 2; }

POM_VERSION="$(awk '/<artifactId>gewumind-boot<\/artifactId>/{found=1} found && /<version>/{gsub(/.*<version>|<\/version>.*/,""); print; exit}' "$POM")"
[[ -n "$POM_VERSION" ]] || { echo "install-gewumind-dep: 无法从 pom 解析版本" >&2; exit 2; }
VERSION="${VERSION:-$POM_VERSION}"
[[ "$VERSION" = "$POM_VERSION" ]] || {
  echo "install-gewumind-dep: --version=$VERSION 与 pom 的 $POM_VERSION 不一致" >&2; exit 2; }

mkdir -p "$DEST/com/gewumind/gewumind-boot/$VERSION"
mvn -q -o install:install-file \
  -Dfile="$JAR" \
  -DpomFile="$POM" \
  -DlocalRepositoryPath="$DEST"

BASE="$DEST/com/gewumind/gewumind-boot/$VERSION/gewumind-boot-$VERSION"
for f in "$BASE.jar" "$BASE.pom"; do
  [[ -f "$f" ]] || { echo "install-gewumind-dep: 安装后缺少 $f" >&2; exit 1; }
  md5sum "$f" | cut -d' ' -f1 > "$f.md5"
  sha1sum "$f" | cut -d' ' -f1 > "$f.sha1"
done

if [[ -z "$SIG" && -f "$JAR.sig" ]]; then SIG="$JAR.sig"; fi
if [[ -n "$SIG" ]]; then
  [[ -f "$SIG" ]] || { echo "install-gewumind-dep: 找不到签名 $SIG" >&2; exit 2; }
  cp "$SIG" "$BASE.jar.sig"
  echo "signature: $BASE.jar.sig"
fi

echo "installed: gewumind-boot-$VERSION -> $DEST"
