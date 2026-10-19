@echo off
rem ===========================================================================
rem  start.bat —— Windows 版启动脚本 / start GewuMind Boot (Windows)
rem
rem  与 scripts\start.sh 行为一致：jar 模式 / --dev 开发模式，
rem  启动前检查端口是否被占用（避免误报“启动成功”）。
rem  Behaves exactly like scripts\start.sh: jar mode, --dev mode, and a
rem  pre-flight port check that prevents falsely reporting success.
rem
rem  用法 / Usage:
rem      scripts\start.bat                 用 target\gewumind-boot-app.jar
rem      scripts\start.bat --dev           开发模式（classpath 优先）/ dev mode, classpath first
rem      set SERVER_PORT=9090  ^&^& scripts\start.bat
rem ===========================================================================
setlocal enabledelayedexpansion

set "PROJECT_DIR=%~dp0.."

rem 发行包布局：jar 在 libs\、配置在 config\；源码布局：jar 在 target\
if exist "%PROJECT_DIR%\libs\gewumind-boot-app.jar" (
    set "JAR=%PROJECT_DIR%\libs\gewumind-boot-app.jar"
    set "PID_FILE=%PROJECT_DIR%\libs\gewumind-boot-app.pid"
    set "CONFIG_ARG=--spring.config.additional-location=file:%PROJECT_DIR%\config\"
) else (
    set "JAR=%PROJECT_DIR%\target\gewumind-boot-app.jar"
    set "PID_FILE=%PROJECT_DIR%\target\gewumind-boot-app.pid"
    set "CONFIG_ARG="
)
set "LOG_DIR=%PROJECT_DIR%\logs"
set "LOG_FILE=%LOG_DIR%\gewumind-boot-app.log"

if "%SERVER_PORT%"=="" set "SERVER_PORT=9089"
if "%JVM_OPTS%"=="" set "JVM_OPTS=-Xms512m -Xmx2g"

rem ---- profile 参数：start.bat --profile online ----
set "PROFILE_ARG="
for %%a in (%*) do (
    echo %%a | findstr /b /c:"--profile=" >nul && set "PROFILE_ARG=--spring.profiles.active=%%~a"
)

cd /d "%PROJECT_DIR%"
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"
if not exist "%PROJECT_DIR%\upload" mkdir "%PROJECT_DIR%\upload"
if not exist "%PROJECT_DIR%\reports" mkdir "%PROJECT_DIR%\reports"

rem ---- 已在运行？----
if exist "%PID_FILE%" (
    for /f "tokens=2 delims= " %%p in ('tasklist /fi "PID eq !PID_FILE!" 2^>nul') do (
        if "!PID_FILE!" neq "" if not "%%p"=="INFO" (
            echo 已在运行 ^(pid=!PID_FILE!^)，先执行 / already running, run scripts\stop.bat first
            exit /b 1
        )
    )
)

rem ---- 端口被别的进程占用时直接报错 ----
rem （否则新进程绑不上端口退出，而下面的探测连到的是别人的端口，会误报启动成功）
powershell -NoProfile -Command "if (Test-NetConnection -ComputerName 127.0.0.1 -Port %SERVER_PORT% -InformationLevel Quiet -WarningAction SilentlyContinue) { exit 0 } else { exit 1 }"
if not errorlevel 1 (
    echo ERROR: 端口 %SERVER_PORT% 已被其他进程占用，本次未启动。
    echo ERROR: port %SERVER_PORT% is already in use; nothing was started.
    echo   查占用 / find the holder:  netstat -ano ^| findstr :%SERVER_PORT%
    echo   或换端口 / or use another port:  set SERVER_PORT=9090 ^&^& scripts\start.bat
    exit /b 1
)

set "MODE=jar"
if /i "%~1"=="--dev" set "MODE=dev"

if "%MODE%"=="jar" (
    if not exist "%JAR%" (
        echo ^> %JAR% 不存在，先执行 mvn package ...
        call mvn -q package -DskipTests
        if errorlevel 1 exit /b 1
    )
)

if "%MODE%"=="dev" (
    echo ^>^> 开发模式启动（classpath 优先），端口 %SERVER_PORT%
    start "gewumind-boot" /min cmd /c "mvn spring-boot:run -Dspring-boot.run.jvmArguments=\"-Dserver.port=%SERVER_PORT% %JVM_OPTS%\" > \"%LOG_FILE%\" 2>&1"
) else (
    echo ^>^> jar 模式启动，端口 %SERVER_PORT%
    start "gewumind-boot" /min cmd /c "java %JVM_OPTS% -Dserver.port=%SERVER_PORT% -jar \"%JAR%\" %CONFIG_ARG% %PROFILE_ARG% > \"%LOG_FILE%\" 2>&1"
)

rem 记录 JVM 进程号，供 stop.bat 使用
rem （start 起的是 cmd 包装进程，这里用端口反查真正的 java 进程更可靠）
echo 等待端口 / waiting for port %SERVER_PORT% ...
set /a TRIES=0
:wait
set /a TRIES+=1
timeout /t 2 /nobreak >nul
powershell -NoProfile -Command "if (Test-NetConnection -ComputerName 127.0.0.1 -Port %SERVER_PORT% -InformationLevel Quiet -WarningAction SilentlyContinue) { exit 0 } else { exit 1 }"
if not errorlevel 1 goto :ready
if %TRIES% GEQ 60 goto :timeout

:ready
for /f "tokens=5" %%p in ('netstat -ano ^| findstr "LISTENING" ^| findstr ":%SERVER_PORT%"') do set "PID_FILE=%%p"
echo %%PID_FILE%%> "%PID_FILE%" 2>nul
if not exist "%PID_FILE%" echo !PID_FILE!> "%PID_FILE%"
echo.
echo ^v 启动成功 / started  http://localhost:%SERVER_PORT%
echo   后台管理  http://localhost:%SERVER_PORT%/        ^(默认 admin / 123456^)
echo   接口文档  http://localhost:%SERVER_PORT%/magic/web
echo   日志      %LOG_FILE%
endlocal
exit /b 0

:timeout
echo.
echo : 60 秒内没监听上 %SERVER_PORT%，日志尾部 / port never opened within 60s, log tail:
powershell -NoProfile -Command "Get-Content -Tail 40 '%LOG_FILE%'"
exit /b 1