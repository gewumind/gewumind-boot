#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# 停止 gewumind-boot / stop GewuMind Boot
# 跨平台：Windows 用 scripts\stop.bat / Cross-platform: use scripts\stop.bat on Windows
# -----------------------------------------------------------------------------
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# pid 文件位置与 start.sh 保持一致：发行包 libs/，源码布局 target/
if [ -f "${PROJECT_DIR}/libs/gewumind-boot-app.pid" ]; then
  PID_FILE="${PROJECT_DIR}/libs/gewumind-boot-app.pid"
else
  PID_FILE="${PROJECT_DIR}/target/gewumind-boot-app.pid"
fi

if [ ! -f "${PID_FILE}" ]; then
  echo "没有 pid 文件，未在运行 / no pid file, not running"
  exit 0
fi

PID="$(cat "${PID_FILE}")"
if ! kill -0 "${PID}" 2>/dev/null; then
  echo "进程 ${PID} 已不存在，清理 pid 文件 / process gone, cleaning up pid file"
  rm -f "${PID_FILE}"
  exit 0
fi

echo ">>> 停止 pid ${PID} ... / stopping pid ${PID} ..."
kill "${PID}"

for i in $(seq 1 30); do
  sleep 1
  if ! kill -0 "${PID}" 2>/dev/null; then
    rm -f "${PID_FILE}"
    echo "✓ 已停止 / stopped"
    exit 0
  fi
done

echo ">>> 优雅关闭超时，强制 kill -9 ${PID} / graceful shutdown timed out, forcing"
kill -9 "${PID}" 2>/dev/null || true
rm -f "${PID_FILE}"
echo "✓ 已停止 / stopped"