@echo off
rem ============================================================================
rem  打包可部署发行包 / build the distributable release package
rem
rem  用法 / Usage:
rem    build-dist.bat                    构建 jar + 生成 dist\gewumind-boot-app-<ver>\
rem    build-dist.bat --skip-build       复用已有 target\gewumind-boot-app.jar
rem
rem  产物 / Output:
rem    dist\gewumind-boot-app-<ver>\          可直接解压部署的目录
rem    dist\gewumind-boot-app-<ver>.tar.gz    Linux / macOS
rem    dist\gewumind-boot-app-<ver>.zip       Windows
rem
rem  Windows 内置 tar.exe（Win10 1803+）用于打 .tar.gz；
rem  zip 用 PowerShell Compress-Archive 生成。
rem ============================================================================
setlocal enabledelayedexpansion

set "PROJECT_DIR=%~dp0.."
cd /d "%PROJECT_DIR%"

if not exist "dist" mkdir "dist"
if not exist "target" mkdir "target"

rem ---- 从 pom.xml 解析版本 ----
rem 用 PowerShell 解析（Windows 自带），避免 findstr 误匹配到其它 <version>
for /f "usebackq delims=" %%v in (`powershell -NoProfile -Command ^
  "$p = Get-Content pom.xml -Raw; ^
   if ($p -match '(?s)<artifactId>gewumind-boot-app</artifactId>\s*<version>([^<]+)</version>') { $matches[1] }"`) do set "APP_VERSION=%%v"

for /f "usebackq delims=" %%k in (`powershell -NoProfile -Command ^
  "$p = Get-Content pom.xml -Raw; ^
   if ($p -match '<gewumind-boot.version>([^<]+)</gewumind-boot.version>') { $matches[1] }"`) do set "KERNEL_VERSION=%%k"

if "%APP_VERSION%"=="" (
    echo ERROR: 无法从 pom.xml 解析 gewumind-boot-app 的版本号。
    exit /b 1
)

set "NAME=gewumind-boot-app-%APP_VERSION%"
set "STAGE=%PROJECT_DIR%\dist\%NAME%"
set "JAR=%PROJECT_DIR%\target\gewumind-boot-app.jar"

echo ==^> 应用版本 %APP_VERSION%（内核 %KERNEL_VERSION%）

rem ---- 安全检查：实例运行中禁止覆盖 fat jar ----
rem Spring Boot fat jar 是「嵌套 jar + 随机访问」，运行期间覆盖会让线上实例抛
rem NoClassDefFoundError 并返回 404。
for %%pf in ("target\gewumind-boot-app.pid" "libs\gewumind-boot-app.pid" "bin\gewumind-boot-app.pid") do (
    if exist %%pf (
        set "PID="
        set /p PID=<%%pf
        tasklist /fi "PID eq !PID!" 2>nul | find "!PID!" >nul && (
            echo ERROR: 检测到实例正在运行 ^(pid=!PID!, %%pf^)。
            echo        原地覆盖 fat jar 会让运行中的实例类加载失败（404 / NoClassDefFoundError）。
            echo        请先执行 scripts\stop.bat 再打包。
            exit /b 1
        )
    )
)

if /i "%~1"=="--skip-build" goto :skip-build

echo ==^> 构建 jar
call mvn -q -o package -DskipTests
if errorlevel 1 (
    echo ERROR: mvn package 失败
    exit /b 1
)

:skip-build
if not exist "%JAR%" (
    echo ERROR: 缺少 %JAR%，请先构建。
    exit /b 1
)

echo ==^> 组装 %STAGE%
if exist "%STAGE%" rmdir /s /q "%STAGE%"
mkdir "%STAGE%\bin" "%STAGE%\libs" "%STAGE%\config" "%STAGE%\logs" "%STAGE%\upload" "%STAGE%\reports" "%STAGE%\data" "%STAGE%\db" "%STAGE%\docs"

rem 应用 jar 放 libs/，bin/ 只放脚本
copy /y "%JAR%" "%STAGE%\libs\gewumind-boot-app.jar" >nul

rem 脚本：先全拷，再剔除打包脚本自身
copy /y "scripts\*" "%STAGE%\bin\" >nul
del /q "%STAGE%\bin\build-dist.sh" "%STAGE%\bin\build-dist.bat" 2>nul

rem 配置
copy /y "src\main\resources\application.yml" "%STAGE%\config\" >nul
for %%p in (dev online docker demo) do (
    if exist "src\main\resources\application-%%p.yml" copy /y "src\main\resources\application-%%p.yml" "%STAGE%\config\" >nul
)

rem 低代码容器 / 基线 SQL / 文档
xcopy "data\magic-api" "%STAGE%\data\magic-api\" /E /I /Y >nul
xcopy "db" "%STAGE%\db\" /E /I /Y >nul
xcopy "docs" "%STAGE%\docs\" /E /I /Y >nul

for %%f in (LICENSE COMMERCIAL_TERMS.md NOTICE README.md README.en.md) do (
    if exist "%%f" copy /y "%%f" "%STAGE%\" >nul
)

rem 根目录快捷启停脚本
> "%STAGE%\start.sh" echo #!/usr/bin/env bash
>>"%STAGE%\start.sh" echo # 快速启动：等价于 bin/start.sh
>>"%STAGE%\start.sh" echo exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" ^&^& pwd)/bin/start.sh" "$@"
> "%STAGE%\stop.sh" echo #!/usr/bin/env bash
>>"%STAGE%\stop.sh" echo exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" ^&^& pwd)/bin/stop.sh" "$@"

rem ---- DEPLOY.md ----
> "%STAGE%\DEPLOY.md" echo # GewuMind Boot 部署说明
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo ## 目录结构
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo | 路径 | 说明 |
>>"%STAGE%\DEPLOY.md" echo |---|---|
>>"%STAGE%\DEPLOY.md" echo | `libs/gewumind-boot-app.jar` | 应用本体（Spring Boot fat jar） |
>>"%STAGE%\DEPLOY.md" echo | `bin/start.sh` / `start.bat` | 启动脚本 |
>>"%STAGE%\DEPLOY.md" echo | `bin/stop.sh` / `stop.bat` | 停止脚本 |
>>"%STAGE%\DEPLOY.md" echo | `bin/gen-ssl-cert.sh` / `.bat` | 自签证书生成 |
>>"%STAGE%\DEPLOY.md" echo | `config/application.yml` | 主配置 |
>>"%STAGE%\DEPLOY.md" echo | `data/magic-api/` | 低代码容器（**备份重点**） |
>>"%STAGE%\DEPLOY.md" echo | `db/init/01-baseline.sql` | 基线库表与初始数据 |
>>"%STAGE%\DEPLOY.md" echo | `logs/` `upload/` `reports/` | 运行期目录 |
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo ## 环境要求
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo - JDK 17+
>>"%STAGE%\DEPLOY.md" echo - MySQL 5.7+ / 8.0+
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo ## 快速开始
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo ```bat
>>"%STAGE%\DEPLOY.md" echo :: 1. 解压 zip
>>"%STAGE%\DEPLOY.md" echo :: 2. 配置数据库 config\application-dev.yml
>>"%STAGE%\DEPLOY.md" echo :: 3. 启动（首次自动建库）
>>"%STAGE%\DEPLOY.md" echo start.bat
>>"%STAGE%\DEPLOY.md" echo ```
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo 浏览器访问 http://^<服务器IP^>:9089 ，默认 admin / 123456（请立即修改）。
>>"%STAGE%\DEPLOY.md" echo.
>>"%STAGE%\DEPLOY.md" echo 启动日志：logs\gewumind-boot-app.log

rem ---- 归档 ----
echo ==^> 归档
if exist "dist\%NAME%.tar.gz" del "dist\%NAME%.tar.gz"
if exist "dist\%NAME%.zip" del "dist\%NAME%.zip"

pushd dist
tar -czf "%NAME%.tar.gz" "%NAME%" >nul 2>&1
if errorlevel 1 (
    echo WARNING: tar 打包失败（需 Windows 10 1803+ 自带 tar.exe），tar.gz 未生成。
) else (
    echo     tar.gz OK
)
popd

powershell -NoProfile -Command ^
  "Compress-Archive -Path 'dist\%NAME%' -DestinationPath 'dist\%NAME%.zip' -Force" >nul 2>&1
if errorlevel 1 (
    echo ERROR: zip 打包失败
    exit /b 1
)

echo ==^> 完成
dir /b "dist\%NAME%.tar.gz" "dist\%NAME%.zip" 2>nul
echo.
echo 目录：dist\%NAME%\

endlocal
exit /b 0
