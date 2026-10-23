#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# push-all.sh — 一条命令把当前分支推到 GitHub + Gitee
#
# 用法：
#   bash scripts/push-all.sh              # 推当前分支 + 所有 tag
#   bash scripts/push-all.sh main         # 只推 main
#   bash scripts/push-all.sh --no-tags main
#
# 凭据（不写进仓库）：
#   GitHub : 读环境变量 GW_GITHUB_TOKEN，或 ~/.config/gewumind/github.md
#   Gitee  : 读环境变量 GW_GITEE_TOKEN，或 ~/.config/gewumind/gitee.md
#
# token 不会写进 .git/config —— push 时用 http.extraheader 临时注入。
# -----------------------------------------------------------------------------
set -euo pipefail

cd "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

BRANCH=""
PUSH_TAGS=1
for arg in "$@"; do
  case "$arg" in
    --no-tags) PUSH_TAGS=0 ;;
    *) BRANCH="$arg" ;;
  esac
done
[ -n "$BRANCH" ] || BRANCH="$(git rev-parse --abbrev-ref HEAD)"

CRED_DIR="${GW_CRED_DIR:-$HOME/.config/gewumind}"

# 从凭据文件里按正则提取 token
cred() {  # cred <file> <regex>
  local file="$1" pat="$2"
  [ -f "$file" ] || return 1
  grep -oE "$pat" "$file" | head -1
}

GH_TOKEN="${GW_GITHUB_TOKEN:-$(cred "$CRED_DIR/github.md" 'github_pat_[A-Za-z0-9_]+' || true)}"
GH_TOKEN="${GH_TOKEN:-$(cred "$CRED_DIR/github.md" 'gh[pousr]_[A-Za-z0-9]+' || true)}"
GT_TOKEN="${GW_GITEE_TOKEN:-$(cred "$CRED_DIR/gitee.md" '[0-9a-f]{32,64}' || true)}"
GT_TOKEN="${GT_TOKEN:-$(cred "$CRED_DIR/gitee.md" 'token[[:space:]]*[:=][[:space:]]*[A-Za-z0-9]{40}' || true)}"

PROXY="${GW_PROXY:-}"

# 自动探测代理：直连不稳时用代理兜底（github 直连偶尔 GnuTLS 断连）
if [ -z "$PROXY" ] && [ -n "${GW_PROXY_FALLBACK:-}" ]; then
  PROXY="$GW_PROXY_FALLBACK"
fi

# 远端 URL（不含凭据）
GH_URL="${GW_GITHUB_REMOTE:-https://github.com/gewumind/$(basename "$PWD").git}"
GT_URL="${GW_GITEE_REMOTE:-https://gitee.com/gewumind/$(basename "$PWD").git}"

# 推一次；失败时换一种连法重试（代理 <-> 直连）
git_push() {  # git_push <url> <token> <basic-user> <args...>
  local url="$1" token="$2" user="$3"; shift 3
  local b64; b64="$(printf '%s:%s' "$user" "$token" | base64 -w0)"
  local -a base=(-c "http.extraheader=Authorization: Basic $b64")
  if [ -n "$PROXY" ]; then
    git "${base[@]}" -c "http.proxy=$PROXY" push "$url" "$@" && return 0
    echo "   (代理方式失败，改用直连重试)" >&2
  fi
  git "${base[@]}" push "$url" "$@"
}

push_one() {  # push_one <label> <url> <token> <basic-user>
  local label="$1" url="$2" token="$3" user="$4"
  if [ -z "$token" ]; then
    echo "!! 跳过 $label：未找到 token" >&2
    return 1
  fi
  echo "==> 推送 $label ($BRANCH) -> $url"
  git_push "$url" "$token" "$user" "$BRANCH" || { echo "!! $label 分支推送失败" >&2; return 1; }
  if [ "$PUSH_TAGS" = "1" ]; then
    if git rev-parse --tags >/dev/null 2>&1; then
      git_push "$url" "$token" "$user" --tags || echo "!! $label tag 推送失败" >&2
    fi
  fi
}

echo "分支: $BRANCH"
# Gitee 的 Basic 认证用真实登录名（GitHub 用 x-access-token）
GH_USER="x-access-token"
GT_USER="${GW_GITEE_USER:-}"
if [ -z "$GT_USER" ] && [ -n "$GT_TOKEN" ]; then
  GT_USER="$(curl -s --max-time 20 "https://api.gitee.com/api/v5/user?access_token=$GT_TOKEN" \
    | sed -n 's/.*"login"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)"
fi
[ -n "$GT_USER" ] || GT_USER="gewumind"

push_one "GitHub" "$GH_URL" "$GH_TOKEN" "$GH_USER" || true
push_one "Gitee"  "$GT_URL" "$GT_TOKEN" "$GT_USER" || true

echo
echo "完成。当前远端："
git remote -v | sed 's/^/  /'
