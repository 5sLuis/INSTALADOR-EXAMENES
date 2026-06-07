@echo off

set URLFILE=%TEMP%\config.txt

powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/5sLuis/INSTALADOR-EXAMENES/main/config.txt' -OutFile '%URLFILE%'"

set /p URL=<"%URLFILE%"

set DESKTOP=%USERPROFILE%\Desktop

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%TEMP%\crear.vbs"
echo sLinkFile = "%DESKTOP%\EXAMEN SUSPENSO.lnk" >> "%TEMP%\crear.vbs"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%TEMP%\crear.vbs"
echo oLink.TargetPath = "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" >> "%TEMP%\crear.vbs"
echo oLink.Arguments = "--kiosk %URL%" >> "%TEMP%\crear.vbs"
echo oLink.Save >> "%TEMP%\crear.vbs"

cscript //nologo "%TEMP%\crear.vbs"

del "%TEMP%\crear.vbs"
del "%URLFILE%"

echo Acceso directo creado correctamente.
pause
