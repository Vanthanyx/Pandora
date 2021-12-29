@echo OFF
@title [ Installer ]
if exist Core.bat goto exist
powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Core.bat -Outfile Core.bat"
timeout 3 > NUL
:exist
start Core.bat
timeout 3 > NUL
start /b "" cmd /c del "%~f0"&exit /b