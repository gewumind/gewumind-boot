@echo off
rem ===========================================================================
rem  stop.bat —— Windows 版停止脚本 / stop GewuMind Boot (Windows)
rem
rem  用法 / Usage: scripts\stop.bat
rem ===========================================================================
setlocal enabledelayedexpansion

if exist "%~dp0..\libs\gewumind-boot-app.pid" (
    set "PID_FILE=%~dp0..\libs\gewumind-boot-app.pid"
) else (
    set "PID_FILE=%~dp0..\target\gewumind-boot-app.pid"
)

if not exist "%PID_FILE%" (
    echo 没有 pid 文件，未在运行 / no pid file, not running
    exit /b 0
)

set "PID="
for /f "usebackq delims=" %%p in ("%PID_FILE%") do set "PID=%%p"
set "PID=!PID: =!"

if "!PID!"=="" (
    echo pid 文件为空，清理 / pid file empty, cleaning up
    del "%PID_FILE%"
    exit /b 0
)

tasklist /fi "PID eq !PID!" 2>nul | find "!PID!" >nul
if errorlevel 1 (
    echo 进程 !PID! 已不存在，清理 pid 文件 / process gone, cleaning up pid file
    del "%PID_FILE%"
    exit /b 0
)

echo ^>^> 停止 pid !PID! ... / stopping pid !PID! ...
taskkill /PID !PID! /T >nul 2>&1

set /a TRIES=0
:wait
set /a TRIES+=1
timeout /t 1 /nobreak >nul
tasklist /fi "PID eq !PID!" 2>nul | find "!PID!" >nul
if errorlevel 1 goto :done
if %TRIES% GEQ 30 goto :force

:done
del "%PID_FILE%" >nul 2>&1
echo ^v 已停止 / stopped
endlocal
exit /b 0

:force
echo ^>^> 优雅关闭超时，强制结束 !PID! / graceful shutdown timed out, forcing
taskkill /PID !PID! /T /F >nul 2>&1
del "%PID_FILE%" >nul 2>&1
echo ^v 已停止 / stopped
endlocal
exit /b 0