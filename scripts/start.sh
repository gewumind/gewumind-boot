#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# 启动 gewumind-boot / start GewuMind Boot
# 跨平台：Windows 用 scripts\start.bat / Cross-platform: use scripts\start.bat on Windows
#
# 用法 / Usage:
#   bash scripts/start.sh                       # 用 target/gewumind-boot-app.jar（没构建则自动构建）
#                                              # runs the built jar (builds it first if missing)
#   bash scripts/start.sh --dev                 # 开发模式：classpath 优先，改代码重启即生效
#                                              # dev mode: classpath first, edit and restart
#   SERVER_PORT=9000 bash scripts/start.sh      # 换端口 / change port
#   JVM_OPTS="-Xms512m -Xmx2g" bash scripts/start.sh
#
# 注意：端口被别的进程占用时会直接报错退出，不会误报「启动成功」。
# Note: if the port is already taken by another process this script aborts
# instead of falsely reporting success.
# -----------------------------------------------------------------------------
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# 发行包布局：jar 在 libs/、配置在 config/；源码布局：jar 在 target/、配置在 src/main/resources。
# Release layout: jar under libs/, config under config/. Source layout: jar under target/.
if [ -f "${PROJECT_DIR}/libs/gewumind-boot-app.jar" ]; then
  JAR="${PROJECT_DIR}/libs/gewumind-boot-app.jar"
  PID_FILE="${PROJECT_DIR}/libs/gewumind-boot-app.pid"
  CONFIG_ARG="--spring.config.additional-location=file:${PROJECT_DIR}/config/"
else
  JAR="${PROJECT_DIR}/target/gewumind-boot-app.jar"
  PID_FILE="${PROJECT_DIR}/target/gewumind-boot-app.pid"
  CONFIG_ARG=""
fi
LOG_DIR="${PROJECT_DIR}/logs"
LOG_FILE="${LOG_DIR}/gewumind-boot-app.log"

SERVER_PORT="${SERVER_PORT:-9089}"
JVM_OPTS="${JVM_OPTS:--Xms512m -Xmx2g}"

cd "${PROJECT_DIR}"
mkdir -p "${LOG_DIR}" upload reports

if [ -f "${PID_FILE}" ] && kill -0 "$(cat "${PID_FILE}")" 2>/dev/null; then
  echo "已在运行 (pid=$(cat "${PID_FILE}"))，先执行 bash scripts/stop.sh / already running, stop it first"
  exit 1
fi

# 端口被别的进程占着时必须先报错。
# 否则新进程绑不上端口直接退出，而下面的"等端口"探测到的是**别人**的端口，
# 会误报「启动成功」——实际服务根本没起来，是很难查的假象。
if timeout 2 bash -c "cat < /dev/null > /dev/tcp/127.0.0.1/${SERVER_PORT}" 2>/dev/null; then
  echo "ERROR: 端口 ${SERVER_PORT} 已被其他进程占用，本次未启动。" >&2
  echo "ERROR: port ${SERVER_PORT} is already in use; nothing was started." >&2
  echo "  查占用 / find the holder:  ss -ltnp | grep ${SERVER_PORT}" >&2
  echo "  或换端口 / or use another port:  SERVER_PORT=9090 bash scripts/start.sh" >&2
  exit 1
fi

MODE="jar"
PROFILE=""
for arg in "$@"; do
  case "${arg}" in
    --dev) MODE="dev" ;;
    --profile) shift ;;
    --profile=*) PROFILE="${arg#--profile=}" ;;
  esac
done
# 独立取值：--profile online
if [ "${1:-}" = "--profile" ] && [ -n "${2:-}" ]; then PROFILE="${2}"; fi
if [ -n "${PROFILE}" ]; then
  CONFIG_ARG="${CONFIG_ARG} --spring.profiles.active=${PROFILE}"
fi

if [ "${MODE}" = "jar" ] && [ ! -f "${JAR}" ]; then
  echo ">>> ${JAR} 不存在，先执行 mvn package ... / jar missing, building first ..."
  mvn -q -o package -DskipTests
fi

if [ "${MODE}" = "dev" ]; then
  echo ">>> 开发模式启动（classpath 优先），端口 ${SERVER_PORT} / starting in dev mode on port ${SERVER_PORT}"
  nohup mvn spring-boot:run \
    -Dspring-boot.run.jvmArguments="-Dserver.port=${SERVER_PORT} ${JVM_OPTS}" \
    > "${LOG_FILE}" 2>&1 &
else
  echo ">>> jar 模式启动，端口 ${SERVER_PORT} / starting from jar on port ${SERVER_PORT}"
  # shellcheck disable=SC2086
  nohup java ${JVM_OPTS} -Dserver.port="${SERVER_PORT}" -jar "${JAR}" ${CONFIG_ARG} > "${LOG_FILE}" 2>&1 &
fi

echo $! > "${PID_FILE}"
echo "pid  = $(cat "${PID_FILE}")"
echo "日志 = ${LOG_FILE}"

# 等端口起来
for i in $(seq 1 60); do
  sleep 2
  if timeout 2 bash -c "cat < /dev/null > /dev/tcp/127.0.0.1/${SERVER_PORT}" 2>/dev/null; then
    echo ""
    echo "✓ 启动成功 / started  http://localhost:${SERVER_PORT}"
    echo "  后台管理  http://localhost:${SERVER_PORT}/        （默认 admin / 123456）"
    echo "  Admin     http://localhost:${SERVER_PORT}/        (default admin / 123456)"
    echo "  接口文档  http://localhost:${SERVER_PORT}/magic/web"
    echo "  Magic-Web http://localhost:${SERVER_PORT}/magic/web"
    echo "  Druid     http://localhost:${SERVER_PORT}/druid   （admin / 123456）"
    exit 0
  fi
  if ! kill -0 "$(cat "${PID_FILE}")" 2>/dev/null; then
    echo ""
    echo "✗ 启动失败，日志尾部 / startup failed, log tail:"
    tail -40 "${LOG_FILE}"
    exit 1
  fi
done

echo ""
echo "⚠ 60 秒内没监听上 ${SERVER_PORT}，日志尾部 / port never opened within 60s, log tail:"
tail -40 "${LOG_FILE}"
exit 1