@echo off

set URLFILE=%TEMP%\config.txt

powershell -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "%URL%"

del "%URLFILE%"
