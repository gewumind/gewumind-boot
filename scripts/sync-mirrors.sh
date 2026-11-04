#!/usr/bin/env bash
# sync-mirrors.sh — 发版镜像同步（本地 Gitea 主源 → gitee/github 公开镜像）
#
# 用法:
#   bash scripts/sync-mirrors.sh            # 全部仓库
#   bash scripts/sync-mirrors.sh boot       # 仅 gewumind-boot
#   bash scripts/sync-mirrors.sh skill      # 仅 gewumind-skill
#   bash scripts/sync-mirrors.sh html       # 仅 gewumind-github-html
#   bash scripts/sync-mirrors.sh private    # 仅私有仓库（backend/frontend/sign/publish/video，只进 Gitea）
#
# 规则:
#   - 本地 Gitea(localhost:3000) = 主源，全分支 + 全 tags
#   - gitee/github 只镜像 3 个公开仓库的版本线（main / release/1.x / next/3.x）+ tags
#   - 私有仓库（内核/前端源码/签名工具等）永不外推
#
# 依赖: /tmp/opencode/askpass-{gitea,gitee,github}.sh（缺失时报错退出）

set -euo pipefail

GITEA_ASKPASS=/tmp/opencode/askpass-gitea.sh
GITEE_ASKPASS=/tmp/opencode/askpass-gitee.sh
GITHUB_ASKPASS=/tmp/opencode/askpass-github.sh
for f in "$GITEA_ASKPASS" "$GITEE_ASKPASS" "$GITHUB_ASKPASS"; do
  [ -x "$f" ] || { echo "ERROR: 缺少 askpass 脚本 $f" >&2; exit 1; }
done

# 公开镜像只推这些版本线（存在的才推）
LINES="main release/1.x next/3.x"

REPO_BOOT=/data/projects/gewumind-boot
REPO_SKILL=/data/projects/magic-boot/gewumind-skill
REPO_HTML=/data/projects/gewumind-github-html
REPO_BACKEND=/data/projects/magic-boot/backend
REPO_FRONTEND=/data/projects/magic-boot/frontend
REPO_SIGN=/data1/workerspace/gewumind-sign
REPO_PUBLISH=/data1/workerspace/gewumind-publish
REPO_VIDEO=/data1/workerspace/gewumind-boot-video

# $1=仓库目录 $2=gitea 远程名
push_gitea() {
  local dir=$1 remote=$2
  echo "==> [gitea] $dir -> $remote"
  (cd "$dir" && \
    GIT_ASKPASS="$GITEA_ASKPASS" GIT_TERMINAL_PROMPT=0 git push "$remote" --all && \
    GIT_ASKPASS="$GITEA_ASKPASS" GIT_TERMINAL_PROMPT=0 git push "$remote" --tags)
}

# $1=仓库目录 $2=镜像远程名 $3=askpass
push_mirror() {
  local dir=$1 remote=$2 askpass=$3
  local branches=()
  (cd "$dir" && for b in $LINES; do
    git show-ref --verify --quiet "refs/heads/$b" && echo "$b" || true
  done) > /tmp/.sync-mirrors-branches.$$
  mapfile -t branches < /tmp/.sync-mirrors-branches.$$
  rm -f /tmp/.sync-mirrors-branches.$$
  echo "==> [mirror:$remote] $dir 分支: ${branches[*]:-（无）}"
  (cd "$dir" && \
    if [ ${#branches[@]} -gt 0 ]; then
      GIT_ASKPASS="$askpass" GIT_TERMINAL_PROMPT=0 git -c credential.helper= push "$remote" "${branches[@]}"
    fi && \
    GIT_ASKPASS="$askpass" GIT_TERMINAL_PROMPT=0 git push "$remote" --tags)
}

sync_boot() {
  push_gitea "$REPO_BOOT" gitea
  push_mirror "$REPO_BOOT" gitee "$GITEE_ASKPASS"
  push_mirror "$REPO_BOOT" origin "$GITHUB_ASKPASS"
}

sync_skill() {
  push_gitea "$REPO_SKILL" gitea
  push_mirror "$REPO_SKILL" gitee "$GITEE_ASKPASS"
  push_mirror "$REPO_SKILL" origin "$GITHUB_ASKPASS"
}

sync_html() {
  push_gitea "$REPO_HTML" gitea
  push_mirror "$REPO_HTML" origin "$GITHUB_ASKPASS"
}

sync_private() {
  push_gitea "$REPO_BACKEND" origin
  push_gitea "$REPO_FRONTEND" origin
  push_gitea "$REPO_SIGN" origin
  push_gitea "$REPO_PUBLISH" origin
  push_gitea "$REPO_VIDEO" origin
}

target=${1:-all}
case "$target" in
  boot)    sync_boot ;;
  skill)   sync_skill ;;
  html)    sync_html ;;
  private) sync_private ;;
  all)     sync_boot; sync_skill; sync_html; sync_private ;;
  *) echo "用法: $0 [all|boot|skill|html|private]" >&2; exit 1 ;;
esac
echo "==> 完成"
