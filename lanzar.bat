@echo off

set URLFILE=%TEMP%\config.txt
set TS=%RANDOM%%RANDOM%%RANDOM%

powershell -Command "Invoke-WebRequest -UseBasicParsing -Headers @{'Cache-Control'='no-cache'} -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt?nocache=%TS%' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

echo URL LEIDA: %URL%
pause

taskkill /F /IM brave.exe >nul 2>&1
timeout /t 2 >nul

start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --new-window --kiosk "%URL%"

del "%URLFILE%"
