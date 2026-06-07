@echo off

set TMPFILE=%TEMP%\moodle.bat

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/moodle.bat' -OutFile '%TMPFILE%'"

call "%TMPFILE%"

del "%TMPFILE%"
