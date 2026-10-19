@echo off
rem ============================================================================
rem  生成自签 TLS 证书（PKCS12，Spring Boot 可直接使用）
rem  Generate a self-signed TLS certificate (PKCS12, for Spring Boot)
rem
rem  内网部署用这个够用。正式环境请采购或用内网 CA 签发的受信任证书。
rem
rem  用法 / Usage:
rem    gen-ssl-cert.bat                        输出到 ..\certs
rem    gen-ssl-cert.bat D:\gewumind\certs     指定输出目录
rem    gen-ssl-cert.bat certs 3650             指定有效期（天）
rem    gen-ssl-cert.bat certs 3650 localhost app.example.com
rem
rem  产物 / Output:
rem    <目录>\keystore.p12    交给 Spring Boot 的 server.ssl.key-store
rem    <目录>\README.txt      怎么用 / how to use it
rem
rem  用 JDK 自带的 keytool，不需要装 OpenSSL。
rem  Uses the JDK's keytool - OpenSSL is NOT required.
rem
rem  ⚠ 自签证书：浏览器会提示"不受信任"，正式环境请换成受信任证书。
rem ============================================================================
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"
set "PROJECT_DIR=%SCRIPT_DIR%.."

rem ---- 参数 ----
set "OUT_DIR=%~1"
if "%OUT_DIR%"=="" set "OUT_DIR=%PROJECT_DIR%\certs"
set "DAYS=%~2"
if "%DAYS%"=="" set "DAYS=3650"
shift
shift

rem 剩下的参数都是额外 SAN；没给就用 localhost + 本机 hostname
set "HOSTNAMES=%1"
if "%HOSTNAMES%"=="" (
    for /f "delims=" %%h in ('hostname') do set "HOSTNAMES=localhost %%h"
)

set "KEY_ALIAS=tomcat"

rem ---- 找 keytool（来自 JDK）----
set "KEYTOOL="
where keytool >nul 2>nul && set "KEYTOOL=keytool"
if "%KEYTOOL%"=="" (
    if defined JAVA_HOME (
        if exist "%JAVA_HOME%\bin\keytool.exe" set "KEYTOOL=%JAVA_HOME%\bin\keytool.exe"
    )
)
if "%KEYTOOL%"=="" (
    echo ERROR: 找不到 keytool。请安装 JDK 17+ 或设置 JAVA_HOME。
    echo ERROR: keytool not found. Install JDK 17+ or set JAVA_HOME.
    exit /b 1
)

rem ---- 随机生成 16 位密码 ----
set "STORE_PASS="
for /f "delims=" %%c in ('powershell -NoProfile -Command ^
    "$b=New-Object byte[] 18; (New-Object Random).NextBytes($b); ^
     -join ($b ^| ForEach-Object { [char]([int]$_ %% 26 + 65) })"') do set "STORE_PASS=%%c"

if "!STORE_PASS!"=="" (
    echo ERROR: 生成密码失败。
    exit /b 1
)

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

rem keytool 的 SAN 与 openssl 语法不同：必须带 dns: / ip: 前缀，否则报
rem "Illegal item <host> in SAN=..."。IP 地址用 ip:，其余用 dns:。
set "SAN_LIST="
for %%h in (%HOSTNAMES%) do (
    set "H=%%h"
    echo !H! | findstr /r "^[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$" >nul && (
        set "SAN_LIST=!SAN_LIST!ip:%%h,"
    ) || (
        set "SAN_LIST=!SAN_LIST!dns:%%h,"
    )
)
rem 去掉结尾多余的逗号
set "SAN_LIST=!SAN_LIST:,=!"

if "!SAN_LIST!"=="" (
    echo ERROR: 没有可用的域名或 IP。
    exit /b 1
)

echo ^>^>^> 生成自签证书
echo     输出目录: %OUT_DIR%
echo     有效期  : %DAYS% 天
echo     域名    : %HOSTNAMES%

"%KEYTOOL%" -genkeypair ^
    -alias "%KEY_ALIAS%" ^
    -keyalg RSA ^
    -keysize 2048 ^
    -sigalg SHA256withRSA ^
    -validity %DAYS% ^
    -dname "CN=%HOSTNAMES%" ^
    -ext "SAN=%SAN_LIST%" ^
    -ext "KU=digitalSignature,keyEncipherment" ^
    -ext "EKU=serverAuth" ^
    -keystore "%OUT_DIR%\keystore.p12" ^
    -storetype PKCS12 ^
    -storepass "%STORE_PASS%" ^
    -keypass "%STORE_PASS%"

if errorlevel 1 (
    echo.
    echo ERROR: keytool 生成失败。
    exit /b 1
)

rem 导出公钥证书，方便装到客户端信任库
"%KEYTOOL%" -exportcert ^
    -alias "%KEY_ALIAS%" ^
    -keystore "%OUT_DIR%\keystore.p12" ^
    -storetype PKCS12 ^
    -storepass "%STORE_PASS%" ^
    -rfc ^
    -file "%OUT_DIR%\server.crt" >nul 2>&1

rem 写使用说明
> "%OUT_DIR%\README.txt" echo 自签证书已生成
>>"%OUT_DIR%\README.txt" echo ==================================================
>>"%OUT_DIR%\README.txt" echo.
>>"%OUT_DIR%\README.txt" echo 文件
>>"%OUT_DIR%\README.txt" echo   keystore.p12   Spring Boot server.ssl.key-store 用的（PKCS12）
>>"%OUT_DIR%\README.txt" echo   server.crt     证书，可导入客户端信任库
>>"%OUT_DIR%\README.txt" echo.
>>"%OUT_DIR%\README.txt" echo application.yml 配置
>>"%OUT_DIR%\README.txt" echo   server:
>>"%OUT_DIR%\README.txt" echo     ssl:
>>"%OUT_DIR%\README.txt" echo       enabled: true
>>"%OUT_DIR%\README.txt" echo       key-store: file:./certs/keystore.p12
>>"%OUT_DIR%\README.txt" echo       key-store-password: %STORE_PASS%
>>"%OUT_DIR%\README.txt" echo       key-store-type: PKCS12
>>"%OUT_DIR%\README.txt" echo       key-alias: %KEY_ALIAS%
>>"%OUT_DIR%\README.txt" echo.
>>"%OUT_DIR%\README.txt" echo   改完重启生效。
>>"%OUT_DIR%\README.txt" echo.
>>"%OUT_DIR%\README.txt" echo 说明
>>"%OUT_DIR%\README.txt" echo   浏览器会提示"证书不受信任"，点"继续访问"即可。
>>"%OUT_DIR%\README.txt" echo   重新生成会覆盖旧证书，已部署的客户端需要重新信任。

echo.
echo ✓ 完成
echo.
echo   文件      %OUT_DIR%\keystore.p12
echo   别名      %KEY_ALIAS%
echo   密码      %STORE_PASS%
echo.
echo   application.yml 里填：
echo     ssl:
echo       enabled: true
echo       key-store: file:%OUT_DIR%\keystore.p12
echo       key-store-password: %STORE_PASS%
echo       key-store-type: PKCS12
echo       key-alias: %KEY_ALIAS%
echo.
echo   自签证书浏览器会提示不受信任，正式环境请换成受信任证书

endlocal
exit /b 0
