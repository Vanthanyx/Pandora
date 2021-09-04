@echo OFF
title [ Installer ]

cd ..\..\..\

if not exist SRC\ md SRC\ > NUL
if not exist SRC\Batch\ md SRC\Batch\ > NUL
if not exist SRC\Batch\Logs\ md SRC\Batch\Logs\ > NUL
if not exist SRC\Batch\Functions\ md SRC\Batch\Functions\ > NUL
if not exist SRC\Data\ md SRC\Data\ > NUL
if not exist SRC\Data\API\ md SRC\Data\API\ > NUL
if not exist SRC\Data\Cache\ md SRC\Data\Cache\ > NUL

powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/UNST.bat -Outfile UNST.bat" && timeout 1 > NUL && move /Y %cd%\UNST.bat %cd%\SRC\Batch\Admin\ > NUL

if not exist %cd%\SRC\Batch\Logs\LogDeleter.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/LogDeleter.bat -Outfile LogDeleter.bat" && timeout 1 > NUL && move /Y %cd%\logDeleter.bat %cd%\SRC\Batch\Logs\ > NUL
if not exist %cd%\SRC\Batch\Logs\LogGenerator.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/LogGenerator.bat -Outfile LogGenerator.bat" && timeout 1 > NUL && move /Y %cd%\logGenerator.bat %cd%\SRC\Batch\Logs\ > NUL

if not exist %cd%\SRC\Batch\Functions\Phase1.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Phase1.bat -Outfile Phase1.bat" && timeout 1 > NUL && move /Y %cd%\Phase1.bat %cd%\SRC\Batch\Functions\ > NUL
if not exist %cd%\SRC\Batch\Functions\Phase2.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Phase2.bat -Outfile Phase2.bat" && timeout 1 > NUL && move /Y %cd%\Phase2.bat %cd%\SRC\Batch\Functions\ > NUL
if not exist %cd%\SRC\Batch\Functions\Phase3.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Phase3.bat -Outfile Phase3.bat" && timeout 1 > NUL && move /Y %cd%\Phase3.bat %cd%\SRC\Batch\Functions\ > NUL
if not exist %cd%\SRC\Batch\Functions\VolumeSetter.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/VolumeSetter.bat -Outfile VolumeSetter.bat" && timeout 1 > NUL && move /Y %cd%\VolumeSetter.bat %cd%\SRC\Batch\Functions\ > NUL

if not exist %cd%\SRC\Data\Cache\HelpYourself.mp4 powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/HelpYourself.mp4 -Outfile HelpYourself.mp4" && timeout 1 > NUL && move /Y %cd%\HelpYourself.mp4 %cd%\SRC\Data\Cache\ > NUL
if not exist %cd%\SRC\Data\Cache\MessageBox.vbs powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/MessageBox.vbs -Outfile MessageBox.vbs" && timeout 1 > NUL && move /Y %cd%\MessageBox.vbs %cd%\SRC\Data\Cache\ > NUL

move /Y %cd%\INIT.bat %cd%\SRC\Batch\Admin\ > NUL

start %cd%\SRC\Batch\Logs\LogGenerator.bat > NUL

start %cd%\SRC\Batch\Functions\Phase1.bat > NUL

timeout 1 > NUL

exit
