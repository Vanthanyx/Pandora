@echo OFF
title [ Pandora's Box ]
if not exist HelpYourself.mp4 powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/HelpYourself.mp4 -Outfile HelpYourself.mp4"
if not exist VolCore.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/VolCore.bat -Outfile VolCore.bat"
if not exist Alert.vbs powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Alert.vbs -Outfile Alert.vbs"
echo Welcome...
start Alert.vbs
start VolCore.bat
start HelpYourself.mp4
timeout 6 > NUL
echo.
powershell -window maximized -command ""
color 0C
echo Hacking Your System :)
echo.
echo.
echo.
timeout 3 > NUL
echo.
echo Stealing IP...
timeout 1 > NUL
echo **.***.***.**
echo.
echo Stealing User Data...
timeout 1 > NUL
echo Username: %USERNAME%
echo Domain: %USERDOMAIN%
echo Date: %date%
echo Time: %time%
echo.
echo Stealing Files...
timeout 1 > NUL
tree ../../../../
echo.
color c0
powershell -window maximized -command ""
for /l %%x in (1, 1, 500) do (
   echo ! TOO LATE !
   echo HAHAHAHAHAHA
)
pause > NUL
