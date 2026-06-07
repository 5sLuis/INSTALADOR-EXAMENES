@echo off

set URLFILE=%TEMP%\config.txt
set TS=%RANDOM%%RANDOM%

powershell -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt?v=%TS%' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

echo URL cargada: %URL%

start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --kiosk "%URL%"

del "%URLFILE%"
