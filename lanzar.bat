@echo off

set URLFILE=%TEMP%\config.txt

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

echo URL LEIDA: %URL%
pause

start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --new-window --kiosk "%URL%"

del "%URLFILE%"
