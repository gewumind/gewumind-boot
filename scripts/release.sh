#!/usr/bin/env bash
# 一键发布（维护者工具）
#
# 用法:
#   scripts/release.sh --version X.Y.Z --skill-dir <path> [--notes FILE] \
#     [--dry-run] [--no-push] [--publish]
#
# 步骤: 同步版本 → 构建 → SHA256SUMS + 签名 → 两仓同 tag → 推送 →（可选）发 Release
# 环境变量:
#   GW_SIGN_ARTIFACT  sign-artifact.py 路径（签名必需）
#   GW_PUSH_ALL       push-all.sh 路径（不设则只打印推送命令）
#   GW_GITHUB_TOKEN   GitHub token（--publish 必需）
#   GW_GITEE_TOKEN    Gitee token（--publish 必需）
#   GW_SIGN_PRIVATE   签名私钥（v1.1.0+ 传 release-2026.private.key）
#   GW_SIGN_PUBLIC    签名公钥（与私钥配对）
#
# 注意: 版本说明（--notes）必须是公开安全的；不要写内核源码/本地路径/密钥/凭据。
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VERSION=""
SKILL_DIR="${GW_SKILL_DIR:-}"
NOTES=""
NOTES_SKILL=""
DRY_RUN=0
DO_PUSH=1
DO_PUBLISH=0
ORG="${GW_GITHUB_ORG:-gewumind}"

usage() { sed -n '2,15p' "$0" | sed 's/^# \{0,1\}//'; }
die() { echo "release: $*" >&2; exit 1; }

while [[ $# -gt 0 ]]; do
  case "$1" in
    --version) VERSION="$2"; shift 2 ;;
    --skill-dir) SKILL_DIR="$2"; shift 2 ;;
    --notes) NOTES="$2"; shift 2 ;;
    --notes-skill) NOTES_SKILL="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    --no-push) DO_PUSH=0; shift ;;
    --publish) DO_PUBLISH=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) die "未知参数 $1" ;;
  esac
done

[[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || die "版本必须 X.Y.Z"
[[ -n "$SKILL_DIR" && -d "$SKILL_DIR" ]] || die "需要 --skill-dir（gewumind-skill 路径）"
SKILL_DIR="$(cd "$SKILL_DIR" && pwd)"

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "[dry-run] root       = $ROOT"
  echo "[dry-run] skill      = $SKILL_DIR"
  echo "[dry-run] version    = $VERSION"
  echo "[dry-run] notes      = ${NOTES:-<none>}"
  echo "[dry-run] steps      = bump both → build-dist → SHA256SUMS+sign → tag → push$([[ $DO_PUBLISH -eq 1 ]] && echo ' → publish')"
  exit 0
fi

[[ -z "$(git -C "$ROOT" status --porcelain)" ]] || die "$ROOT 工作区不干净"
[[ -z "$(git -C "$SKILL_DIR" status --porcelain)" ]] || die "$SKILL_DIR 工作区不干净"

# 1. 同步版本
python3 - "$ROOT/pom.xml" "$VERSION" <<'PY'
import re, sys
p, v = sys.argv[1], sys.argv[2]
s = open(p, encoding='utf-8').read()
if '<artifactId>gewumind-boot-app</artifactId>' not in s:
    sys.exit('pom: gewumind-boot-app not found')
s2 = re.sub(r'(<artifactId>gewumind-boot-app</artifactId>\s*<version>)[^<]+(</version>)',
            r'\g<1>' + v + r'\g<2>', s, count=1)
open(p, 'w', encoding='utf-8').write(s2)
PY
sed -i "s/当前 [0-9][0-9.]*）/当前 $VERSION）/g" "$ROOT/README.md"
sed -i "s/currently [0-9][0-9.]*)/currently $VERSION)/g" "$ROOT/README.en.md"
printf '%s\n' "$VERSION" > "$SKILL_DIR/VERSION"
sed -i "s/\*\*版本 [0-9][0-9.]*\*\*/**版本 $VERSION**/" "$SKILL_DIR/README.md"
sed -i "s/版本 [0-9][0-9.]*（\`VERSION\`）/版本 $VERSION（\`VERSION\`）/" "$SKILL_DIR/SKILL.md"

git -C "$ROOT" add pom.xml README.md README.en.md
git -C "$ROOT" diff --cached --quiet || git -C "$ROOT" commit -m "release: v$VERSION"
git -C "$SKILL_DIR" add VERSION README.md SKILL.md
git -C "$SKILL_DIR" diff --cached --quiet || git -C "$SKILL_DIR" commit -m "release: v$VERSION"

# 2. 构建发行包
bash "$ROOT/scripts/build-dist.sh"

# 3. 校验和 + 签名
DIST="$ROOT/dist"
NAME="gewumind-boot-app-$VERSION"
KVER="$(sed -n 's|.*<gewumind-boot.version>\(.*\)</gewumind-boot.version>.*|\1|p' "$ROOT/pom.xml" | head -1)"
[[ -n "$KVER" ]] || die "无法解析内核版本"
KJAR="$ROOT/libs/com/gewumind/gewumind-boot/$KVER/gewumind-boot-$KVER.jar"
[[ -f "$KJAR" ]] || die "缺少内核 jar: $KJAR"
cp "$KJAR" "$DIST/"
[[ -f "$KJAR.sig" ]] && cp "$KJAR.sig" "$DIST/"
cp "$ROOT/gewumind-release.pub" "$DIST/"
cp "$ROOT/gewumind-release-2026.pub" "$DIST/"
( cd "$DIST" && sha256sum "$NAME.zip" "$NAME.tar.gz" "gewumind-boot-$KVER.jar" > SHA256SUMS )
if [[ -n "${GW_SIGN_ARTIFACT:-}" ]]; then
  if [[ -n "${GW_SIGN_PRIVATE:-}" && -n "${GW_SIGN_PUBLIC:-}" ]]; then
    python3 "$GW_SIGN_ARTIFACT" "$DIST/SHA256SUMS" "$GW_SIGN_PRIVATE" "$GW_SIGN_PUBLIC"
  else
    python3 "$GW_SIGN_ARTIFACT" "$DIST/SHA256SUMS"
  fi
else
  echo "WARN: 未设置 GW_SIGN_ARTIFACT，SHA256SUMS 未签名" >&2
fi

# 4. 打 tag
git -C "$ROOT" tag -a "v$VERSION" -m "GewuMind Boot v$VERSION"
git -C "$SKILL_DIR" tag -a "v$VERSION" -m "gewumind-skill v$VERSION"

# 5. 推送
if [[ "$DO_PUSH" -eq 1 ]]; then
  if [[ -n "${GW_PUSH_ALL:-}" ]]; then
    # 先推 skill，再推 boot：boot 的 tag CI 会校验 skill 的 VERSION
    "$GW_PUSH_ALL" "$SKILL_DIR"
    "$GW_PUSH_ALL" "$ROOT"
  else
    echo "WARN: 未设置 GW_PUSH_ALL；请手动推送 main + tags" >&2
  fi
fi

# 6. 发 Release（可选）
if [[ "$DO_PUBLISH" -eq 0 ]]; then
  echo "release: 完成（未发布 Release）"
  exit 0
fi

[[ -n "$NOTES" && -f "$NOTES" ]] || die "--publish 需要 --notes（公开安全的版本说明）"
[[ -n "${GW_GITHUB_TOKEN:-}" ]] || die "--publish 需要 GW_GITHUB_TOKEN"
[[ -n "${GW_GITEE_TOKEN:-}" ]] || die "--publish 需要 GW_GITEE_TOKEN"
BODY="$(cat "$NOTES")"
if [[ -n "$NOTES_SKILL" && -f "$NOTES_SKILL" ]]; then
  SKILL_BODY="$(cat "$NOTES_SKILL")"
else
  SKILL_BODY="与 [gewumind-boot v$VERSION](https://github.com/$ORG/$(basename "$ROOT")/releases/tag/v$VERSION) 同步发布。"
fi
BOOT_REPO="$(basename "$ROOT")"
SKILL_REPO="$(basename "$SKILL_DIR")"

json_release() {
  python3 - "$1" "$2" "$3" <<'PY'
import json, sys
print(json.dumps({"tag_name": sys.argv[1], "name": sys.argv[2], "body": sys.argv[3],
                  "draft": False, "prerelease": False}, ensure_ascii=False))
PY
}

GH_ID="$(json_release "v$VERSION" "GewuMind Boot v$VERSION" "$BODY" \
  | curl -s -X POST -H "Authorization: Bearer $GW_GITHUB_TOKEN" -H "Accept: application/vnd.github+json" \
      "https://api.github.com/repos/$ORG/$BOOT_REPO/releases" --data-binary @- \
  | python3 -c 'import sys,json; print(json.load(sys.stdin)["id"])')"
[[ -n "$GH_ID" ]] || die "GitHub Release 创建失败"

gh_upload() {
  local file="$1" type="$2"
  curl -s -X POST -H "Authorization: Bearer $GW_GITHUB_TOKEN" -H "Content-Type: $type" \
    --data-binary @"$file" \
    "https://uploads.github.com/repos/$ORG/$BOOT_REPO/releases/$GH_ID/assets?name=$(basename "$file")" >/dev/null
}
gh_upload "$DIST/$NAME.zip" application/zip
gh_upload "$DIST/$NAME.tar.gz" application/gzip
gh_upload "$DIST/SHA256SUMS" text/plain
[[ -f "$DIST/SHA256SUMS.sig" ]] && gh_upload "$DIST/SHA256SUMS.sig" text/plain
gh_upload "$DIST/gewumind-boot-$KVER.jar" application/java-archive
[[ -f "$DIST/gewumind-boot-$KVER.jar.sig" ]] && gh_upload "$DIST/gewumind-boot-$KVER.jar.sig" text/plain
gh_upload "$DIST/gewumind-release.pub" text/plain
gh_upload "$DIST/gewumind-release-2026.pub" text/plain

json_release "v$VERSION" "gewumind-skill v$VERSION" "$SKILL_BODY" \
  | curl -s -X POST -H "Authorization: Bearer $GW_GITHUB_TOKEN" -H "Accept: application/vnd.github+json" \
      "https://api.github.com/repos/$ORG/$SKILL_REPO/releases" --data-binary @- >/dev/null

gitee_release() {
  local repo="$1" name="$2" body="$3"
  curl -s -X POST "https://gitee.com/api/v5/repos/$ORG/$repo/releases" \
    --data-urlencode "access_token=$GW_GITEE_TOKEN" --data-urlencode "tag_name=v$VERSION" \
    --data-urlencode "target_commitish=main" --data-urlencode "name=$name" \
    --data-urlencode "body=$body" \
    | python3 -c 'import sys,json; print(json.load(sys.stdin)["id"])'
}
GT_ID="$(gitee_release "$BOOT_REPO" "GewuMind Boot v$VERSION" "$BODY")"
[[ -n "$GT_ID" ]] || die "Gitee Release 创建失败"
gitee_release "$SKILL_REPO" "gewumind-skill v$VERSION" "$SKILL_BODY" >/dev/null

gitee_upload() {
  curl -s -X POST "https://gitee.com/api/v5/repos/$ORG/$BOOT_REPO/releases/$GT_ID/attach_files" \
    -F "access_token=$GW_GITEE_TOKEN" -F "file=@$1" >/dev/null
}
gitee_upload "$DIST/$NAME.zip"
gitee_upload "$DIST/$NAME.tar.gz"
gitee_upload "$DIST/SHA256SUMS"
[[ -f "$DIST/SHA256SUMS.sig" ]] && gitee_upload "$DIST/SHA256SUMS.sig"
gitee_upload "$DIST/gewumind-boot-$KVER.jar"
[[ -f "$DIST/gewumind-boot-$KVER.jar.sig" ]] && gitee_upload "$DIST/gewumind-boot-$KVER.jar.sig"
gitee_upload "$DIST/gewumind-release.pub"
gitee_upload "$DIST/gewumind-release-2026.pub"

echo "release: v$VERSION 已发布"
