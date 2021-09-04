@echo OFF
title [ Phase 1 ]
echo Welcome...
start VolumeSetter > NUL
cd ..\..\..\ > NUL
start /min SRC\Data\Cache\HelpYourself.mp4 > NUL
cd SRC\Batch\Functions\ > NUL
timeout 7 > NUL
echo.
powershell -window maximized -command ""
color 0C
echo Hacking Your System :)
echo.
echo.
echo.
timeout 3 > NUL
echo Creating Obsticles...
for /l %%x in (1, 1, 3) do (
   start Phase2.bat
)
echo.
powershell -window minimized -command ""
echo Stealing IPs...
timeout 1 > NUL
echo 27.165.157.62
echo 85.201.51.250
echo 187.21.85.251
echo 47.63.39.147
echo 246.96.46.15
echo 160.217.63.127
echo 75.224.2.44
echo 248.152.67.52
echo 33.79.146.114
echo 47.208.40.73
echo 204.31.133.196
echo 70.247.123.218
echo 88.135.69.80
echo 221.37.201.115
echo 164.165.121.51
echo 124.50.255.98
echo 101.119.186.164
echo 195.224.21.200
echo 170.115.155.83
echo 90.63.93.181
echo 204.130.186.107
echo 215.149.168.147
echo 118.118.209.236
echo 88.215.109.226
echo 185.180.149.222
echo 29.241.0.251
echo 5.252.190.230
echo 195.164.207.28
echo 106.99.213.99
echo 220.160.17.151
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
echo Downloading...
echo.
echo.
echo.
echo Done!
echo.
powershell -window maximized -command ""
for /l %%x in (1, 1, 50) do (
   echo "(:<   TOO LATE   >:)"
)
tree "C:\Program Files" > NUL
pause > NUL