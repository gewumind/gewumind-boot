#!/usr/bin/env bash
# =============================================================================
# GewuMind Boot 1.2.x 发布脚本（本地，记录 1.2.1 的实际流程，可复用）
#
# 用法:
#   .tasks/release.sh --version 1.2.1 --kernel 0.3.4 \
#     --skill-dir /data/projects/magic-boot/gewumind-skill \
#     [--branch release/1.2] [--dry-run] [--no-push]
#
# 前置约定:
#   - 内核 / 前端源码**不推送**（项目约定）；本脚本只在本地构建，
#     把内核 thin jar 注入 app 的 libs、把前端 dist 同步进 static。
#   - 组件 .ms（data/zh、data/en）不进入 jar，发行包需另带 data/ 目录。
#     运行前请先在 release 分支提交好 .ms / DB 脚本 / 发布说明。
#   - 推送需要本机已配置 gitee 凭据（credential helper 或 GIT_ASKPASS）。
#
# 环境变量（默认值见下）:
#   GW_BACKEND / GW_FRONTEND / GW_SKILL_DIR  源码目录
#   GW_GITEE_REMOTE  app 的 remote 名（默认 gitee）
#   GIT_AUTHOR_NAME / GIT_AUTHOR_EMAIL       提交身份（默认 GewuMind）
# =============================================================================
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PARENT="$(cd "$ROOT/.." && pwd)"
BACKEND="${GW_BACKEND:-$PARENT/magic-boot/backend}"
FRONTEND="${GW_FRONTEND:-$PARENT/magic-boot/frontend}"
SKILL_DIR="${GW_SKILL_DIR:-$PARENT/magic-boot/gewumind-skill}"
REMOTE="${GW_GITEE_REMOTE:-gitee}"
AUTHOR_NAME="${GIT_AUTHOR_NAME:-GewuMind}"
AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL:-gewumind@foxmail.com}"

VERSION=""; KERNEL=""; BRANCH="release/1.2"; DRY=0; PUSH=1
die(){ echo "release: $*" >&2; exit 1; }
while [[ $# -gt 0 ]]; do
  case "$1" in
    --version) VERSION="$2"; shift 2 ;;
    --kernel) KERNEL="$2"; shift 2 ;;
    --skill-dir) SKILL_DIR="$2"; shift 2 ;;
    --branch) BRANCH="$2"; shift 2 ;;
    --dry-run) DRY=1; shift ;;
    --no-push) PUSH=0; shift ;;
    -h|--help) sed -n '2,25p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) die "未知参数 $1" ;;
  esac
done
[[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || die "需要 --version X.Y.Z"
[[ "$KERNEL"  =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || die "需要 --kernel X.Y.Z"
for d in "$BACKEND" "$FRONTEND" "$SKILL_DIR"; do [[ -d "$d" ]] || die "目录不存在: $d"; done
TAG="v$VERSION"

run(){ echo "+ $*"; [[ $DRY -eq 1 ]] || "$@"; }
gitc(){ git -c user.name="$AUTHOR_NAME" -c user.email="$AUTHOR_EMAIL" "$@"; }

cat <<EOF
release plan
  app      : $ROOT (branch $BRANCH)
  kernel   : $BACKEND  -> libs/com/gewumind/gewumind-boot/$KERNEL
  frontend : $FRONTEND -> src/main/resources/static
  skill    : $SKILL_DIR
  version  : $VERSION / kernel $KERNEL / tag $TAG
  push     : $([[ $PUSH -eq 1 ]] && echo "app($REMOTE) + skill" || echo "no")
EOF
[[ $DRY -eq 1 ]] && { echo "(dry-run: 仅打印，不执行)"; exit 0; }

# 0. 切到发布分支
cd "$ROOT"
git show-ref --verify --quiet "refs/heads/$BRANCH" || die "分支 $BRANCH 不存在"
git branch --show-current | grep -qx "$BRANCH" || git checkout "$BRANCH" >/dev/null

# 1. 内核：构建 thin jar（.original）并注入 app libs
( cd "$BACKEND" && mvn -o -q clean install -DskipTests -Dskip.frontend.build=true )
LIBDIR="$ROOT/libs/com/gewumind/gewumind-boot/$KERNEL"
mkdir -p "$LIBDIR"
cp "$BACKEND/target/gewumind-boot.jar.original" "$LIBDIR/gewumind-boot-$KERNEL.jar"
cp "$HOME/.m2/repository/com/gewumind/gewumind-boot/$KERNEL/gewumind-boot-$KERNEL.pom" "$LIBDIR/"
echo "kernel thin jar -> $LIBDIR"

# 2. app 版本号 + 内核依赖版本
python3 - "$ROOT/pom.xml" "$VERSION" "$KERNEL" <<'PY'
import re, sys
p, v, k = sys.argv[1], sys.argv[2], sys.argv[3]
s = open(p, encoding='utf-8').read()
s = re.sub(r'(<artifactId>gewumind-boot-app</artifactId>\s*<version>)[^<]+(</version>)', r'\g<1>'+v+r'\g<2>', s, count=1)
s = re.sub(r'(<gewumind-boot\.version>)[^<]+(</gewumind-boot\.version>)', r'\g<1>'+k+r'\g<2>', s, count=1)
open(p,'w',encoding='utf-8').write(s)
PY

# 3. 前端：构建 dist 并同步进 static
( cd "$FRONTEND" && pnpm build )
rm -rf "$ROOT/src/main/resources/static/assets"
mkdir -p "$ROOT/src/main/resources/static/assets"
cp -a "$FRONTEND/dist/." "$ROOT/src/main/resources/static/"

# 4. app 打包（内含 static；data/ 仍为外部）
( cd "$ROOT" && mvn -o -q clean package -DskipTests )

# 5. skill 版本
printf '%s\n' "$VERSION" > "$SKILL_DIR/VERSION"

# 6. 提交 + tag（app 只加发布相关文件，避免把 2.0 未提交内容带进来）
gitc add pom.xml src/main/resources/static "$LIBDIR"
[[ -f ".tasks/release-notes-v$VERSION.md" ]] && gitc add -f ".tasks/release-notes-v$VERSION.md"
[[ -f "docs/release-matrix.md" ]] && gitc add docs/release-matrix.md
if ! git diff --cached --quiet; then
  gitc commit -m "chore(release): $VERSION" >/dev/null
fi
gitc tag -f -a "$TAG" -m "GewuMind Boot $VERSION (kernel $KERNEL, skill $VERSION)" >/dev/null

gitc -C "$SKILL_DIR" add VERSION SKILL.md SKILL.zh.md references 2>/dev/null || true
if ! git -C "$SKILL_DIR" diff --cached --quiet; then
  gitc -C "$SKILL_DIR" commit -m "chore(release): skill $VERSION" >/dev/null
fi
gitc -C "$SKILL_DIR" tag -f -a "$TAG" -m "gewumind-skill $VERSION" >/dev/null

# 7. 推送
if [[ $PUSH -eq 1 ]]; then
  git push "$REMOTE" "$BRANCH"
  git push -f "$REMOTE" "$TAG"
  git -C "$SKILL_DIR" push gitee main
  git -C "$SKILL_DIR" push -f gitee "$TAG"
fi

echo
echo "done: app $TAG -> $(git rev-list -n1 "$TAG")"
echo "artifact: $ROOT/target/gewumind-boot-app.jar"
echo "reminder: 发行包请附带 data/zh、data/en（.ms 不在 jar 内）"
