#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# 打包可部署发行包 / build the distributable release package
#
# 用法 / Usage:
#   bash scripts/build-dist.sh              # 构建 jar + 生成 dist/gewumind-boot-app-<ver>/
#   bash scripts/build-dist.sh --skip-build # 复用已有 target/gewumind-boot-app.jar
#
# 产物 / Output:
#   dist/gewumind-boot-app-<ver>/            可直接解压部署的目录
#   dist/gewumind-boot-app-<ver>.tar.gz      Linux / macOS
#   dist/gewumind-boot-app-<ver>.zip         Windows
# -----------------------------------------------------------------------------
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${PROJECT_DIR}"

# 发行包名跟着「应用」走，不是跟着内核走：
#   pom 的 <artifactId>gewumind-boot-app</artifactId> + <version>1.0.0</version>  →  gewumind-boot-app-1.0.0
#   <gewumind-boot.version> 是内核 jar 的版本（0.3.1），只是依赖，不该用来命名发行包。
APP_ARTIFACT="$(sed -n 's|.*<artifactId>\(gewumind-boot-app\)</artifactId>.*|\1|p' pom.xml | head -1)"
APP_VERSION="$(awk '/<artifactId>gewumind-boot-app<\/artifactId>/{found=1} found && /<version>/{gsub(/.*<version>|<\/version>.*/,""); print; exit}' pom.xml)"
[ -n "${APP_ARTIFACT}" ] && [ -n "${APP_VERSION}" ] || { echo "无法从 pom.xml 解析 gewumind-boot-app 的版本号"; exit 1; }

KERNEL_VERSION="$(sed -n 's|.*<gewumind-boot.version>\(.*\)</gewumind-boot.version>.*|\1|p' pom.xml | head -1)"

JAR="${PROJECT_DIR}/target/gewumind-boot-app.jar"
NAME="${APP_ARTIFACT}-${APP_VERSION}"
STAGE="${PROJECT_DIR}/dist/${NAME}"

echo "==> 应用版本 ${APP_VERSION}（内核 ${KERNEL_VERSION}）"

# Spring Boot fat jar 是「随机访问 + 嵌套 jar」：JVM 运行时按需从
# target/gewumind-boot-app.jar 里读 class。若在服务运行期间原地覆盖这个文件，
# 运行中的实例会随机抛 NoClassDefFoundError / ClassNotFoundException 并返回 404。
# 所以这里先检查，主实例还活着就拒绝打包。
running_hint() {
  echo "ERROR: 检测到实例正在运行${1:+（$1）}。" >&2
  echo "       原地覆盖 fat jar 会让运行中的实例类加载失败（404 / NoClassDefFoundError）。" >&2
  echo "       请先执行 bash scripts/stop.sh 再打包 / stop the instance before packaging." >&2
  exit 1
}

for pidfile in target/gewumind-boot-app.pid libs/gewumind-boot-app.pid bin/gewumind-boot-app.pid; do
  if [ -f "${PROJECT_DIR}/${pidfile}" ]; then
    pid="$(cat "${PROJECT_DIR}/${pidfile}")"
    if kill -0 "${pid}" 2>/dev/null; then
      running_hint "pid=${pid}, ${pidfile}"
    fi
  fi
done

# pid 文件兜底：有人直接 `java -jar`、或项目自建了别的 pid 文件名时，上面三个路径都查不到。
# 判定优先级：
#   ① 命令行含本项目绝对路径 → 命中（精确，绝对路径启动）
#   ② 工作目录 == 本项目根目录 → 命中（精确，相对路径启动，最常见）
#   ①② 都绑定 PROJECT_DIR，同机其他部署不会误伤；
#   ③ 仅在读不到 cwd 时才用：按相对路径保守判定，可能连另一部署一起拦（见下方说明）。
if command -v pgrep >/dev/null 2>&1; then
  while read -r rp; do
    [ -n "${rp}" ] || continue
    rcmd="$(tr '\0' ' ' < "/proc/${rp}/cmdline" 2>/dev/null || true)"
    rcwd="$(readlink "/proc/${rp}/cwd" 2>/dev/null || true)"
    # ① 命令行里出现本项目绝对路径：绝对路径启动，判定精确
    case "${rcmd}" in
      *"${PROJECT_DIR}/"*) running_hint "pid=${rp}（命令行命中：本项目 jar）" ;;
    esac
    if [ -n "${rcwd}" ]; then
      # ② 能读到 cwd：精确比较工作目录
      [ "${rcwd}" = "${PROJECT_DIR}" ] && running_hint "pid=${rp}（工作目录命中：本项目）"
    else
      # ③ 读不到 cwd（hidepid / 容器 / 权限受限）：退化为保守匹配相对路径。
      #    同机若有多个部署，可能一并拦住 —— 宁可多拦让人先确认，
      #    也不要在实例运行中覆盖 fat jar（代价是线上 404）。
      case "${rcmd}" in
        *target/gewumind-boot-app.jar*)
          running_hint "pid=${rp}（无法读取 cwd，按相对路径保守判定；若是本机另一部署，可先停它再打包）" ;;
      esac
    fi
  done <<< "$(pgrep -f -- 'gewumind-boot-app.jar' || true)"
fi

if [ "${1:-}" != "--skip-build" ]; then
  echo "==> 构建 jar"
  mvn -q -o package -DskipTests
fi

[ -f "${JAR}" ] || { echo "缺少 ${JAR}，请先构建"; exit 1; }

echo "==> 组装 ${STAGE}"
rm -rf "${STAGE}"
mkdir -p "${STAGE}"/{bin,libs,config,logs,upload,reports,data,db,docs}

# 应用 jar 放 libs/（与内核依赖 libs/ 同名目录语义一致），bin/ 只放脚本
cp "${JAR}" "${STAGE}/libs/gewumind-boot-app.jar"
cp -r scripts/. "${STAGE}/bin/"

# 打包脚本自身对发行包用户无意义（需要 Maven 与源码树），剔除
rm -f "${STAGE}/bin/build-dist.sh" "${STAGE}/bin/build-dist.bat" \
      "${STAGE}/bin/release.sh" "${STAGE}/bin/install-gewumind-dep.sh"

cp src/main/resources/application.yml "${STAGE}/config/"
for p in dev online docker demo; do
  cp "src/main/resources/application-${p}.yml" "${STAGE}/config/" 2>/dev/null || true
done

cp -r data/magic-api "${STAGE}/data/"
cp -r db/. "${STAGE}/db/"
cp LICENSE COMMERCIAL_TERMS.md NOTICE README.md README.en.md "${STAGE}/" 2>/dev/null || true
cp -r docs/. "${STAGE}/docs/"
# 发行包保持精简：学习资料（视频/截图）不入包，Markdown 文档保留
rm -rf "${STAGE}/docs/videos" "${STAGE}/docs/screenshots"

cat > "${STAGE}/start.sh" <<'EOF'
#!/usr/bin/env bash
# 快速启动：等价于 bin/start.sh，便于在解压后的根目录直接运行
exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bin/start.sh" "$@"
EOF
cat > "${STAGE}/stop.sh" <<'EOF'
#!/usr/bin/env bash
exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bin/stop.sh" "$@"
EOF
chmod +x "${STAGE}/start.sh" "${STAGE}/stop.sh" "${STAGE}/bin/"*.sh

cat > "${STAGE}/DEPLOY.md" <<'EOF'
# GewuMind Boot 部署说明

## 目录结构

| 路径 | 说明 |
|---|---|
| `libs/gewumind-boot-app.jar` | 应用本体（Spring Boot fat jar） |
| `bin/start.sh` / `start.bat` | 启动脚本（自动建库、用内置 profile） |
| `bin/stop.sh` / `stop.bat` | 停止脚本 |
| `config/application.yml` | 主配置（端口、magic-api 工作区等） |
| `config/application-{dev,online,docker,demo}.yml` | 各环境配置 |
| `data/magic-api/` | 低代码容器：接口 / 组件 / 任务 / 流程（**可编辑，备份重点**） |
| `db/init/01-baseline.sql` | 基线库表结构与初始数据 |
| `logs/` `upload/` `reports/` | 运行期目录，首次启动自动创建 |

## 环境要求

- JDK 17+
- MySQL 5.7+ / 8.0+

## 快速开始

```bash
# 1. 解压
tar -xzf gewumind-boot-app-<ver>.tar.gz     # Windows: 解压 zip
cd gewumind-boot-app-<ver>

# 2. 配置数据库
vi config/application-dev.yml            # 改 spring.datasource 的 url/username/password

# 3. 启动
bash start.sh                            # Windows: start.bat

# 4. 访问
#   http://<服务器IP>:9089
#   默认账号 admin / 123456（首次登录后请立即修改）
```

启动日志：`logs/gewumind-boot-app.log`

## 生产部署建议

- 用 `online` profile：`bash start.sh --profile online`
- 修改默认端口：`SERVER_PORT=8080 bash start.sh`
- 调 JVM：`JVM_OPTS="-Xms1g -Xmx2g" bash start.sh`
- 数据库密码用环境变量覆盖，避免写进配置文件：
  `SPRING_DATASOURCE_PASSWORD='xxx' bash start.sh`
- 配置 HTTPS：见 `bin/gen-ssl-cert.sh`（Windows 用 `.bat`）与 `application.yml` 中 `server.ssl` 注释段
- 备份：`data/magic-api/`（接口与组件）+ 数据库

## 从源码构建

```bash
git clone <repo> && cd gewumind-boot
FRONTEND_DIR=/path/to/frontend bash scripts/sync-frontend.sh --build
bash scripts/build-dist.sh
```
EOF

echo "==> 归档"
( cd dist && tar -czf "${NAME}.tar.gz" "${NAME}" )
( cd dist && rm -f "${NAME}.zip" && zip -qr "${NAME}.zip" "${NAME}" -x '*.DS_Store' )

echo "==> 完成"
ls -lh dist/"${NAME}".tar.gz dist/"${NAME}".zip
echo
echo "目录：dist/${NAME}/"
