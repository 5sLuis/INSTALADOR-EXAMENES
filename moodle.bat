@echo off

set APPDIR=C:\ProgramData\Examenes

if not exist "%APPDIR%" mkdir "%APPDIR%"

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/lanzar.bat' -OutFile '%APPDIR%\lanzar.bat'"

set DESKTOP=%USERPROFILE%\Desktop

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%TEMP%\crear.vbs"
echo sLinkFile = "%DESKTOP%\EXAMEN SUSPENSO.lnk" >> "%TEMP%\crear.vbs"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%TEMP%\crear.vbs"
echo oLink.TargetPath = "%APPDIR%\lanzar.bat" >> "%TEMP%\crear.vbs"
echo oLink.WorkingDirectory = "%APPDIR%" >> "%TEMP%\crear.vbs"
echo oLink.Save >> "%TEMP%\crear.vbs"

cscript //nologo "%TEMP%\crear.vbs"
del "%TEMP%\crear.vbs"

echo Instalacion completada.
pause
