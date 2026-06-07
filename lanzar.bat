@echo off

set URLFILE=%TEMP%\config.txt

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

echo URL LEIDA: %URL%
pause

taskkill /F /IM brave.exe >nul 2>&1
timeout /t 2 >nul

start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --user-data-dir="%TEMP%\ExamenBrave" --new-window --kiosk "%URL%"

del "%URLFILE%"
