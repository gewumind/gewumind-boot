#!/usr/bin/env bash
# 2.0 验收 CI：黄金集 + 越权矩阵 + 门禁三态；失败退出 1，环境错误退出 2。
#
# 用法:
#   BASE=http://127.0.0.1:9200 CONCURRENCY=4 bash tests/ai/ci.sh
#
# 前置:
#   1. 目标实例已启动（2.x 应用 + gewumind_2x 库）
#   2. 已导入 db/init/01-baseline.sql + 02-ai-2.0.sql + 03-business-demo.sql
#   3. 已执行 tests/ai/setup-perm-users.sql（8 个越权测试用户，密码 123456）
#   4. 配置中心 ai.enabled=true，ai.config 指向可用模型
set -uo pipefail
cd "$(dirname "$0")"

BASE="${BASE:-http://127.0.0.1:9200}"
CONCURRENCY="${CONCURRENCY:-4}"

python3 run_acceptance.py --base "$BASE" --concurrency "$CONCURRENCY"
code=$?

if [ "$code" -eq 0 ]; then
  echo "CI PASS"
elif [ "$code" -eq 2 ]; then
  echo "CI ENV-ERROR（服务不可达/登录失败，先检查实例与数据库）"
else
  echo "CI FAIL"
fi
exit "$code"
