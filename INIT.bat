@echo OFF
title [ ... ]

powershell -window minimized -command ""

if not exist %cd%\SRC\Data\API\ md %cd%\SRC\Data\API\ > NUL

if not exist %cd%\SRC\Data\API\BatBox.exe powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/BatBox.exe -Outfile BatBox.exe" && timeout 1 > NUL && move /Y %cd%\BatBox.exe %cd%\SRC\Data\API\ > NUL

if not exist %cd%\SRC\Data\API\GetInput.exe powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/GetInput.exe -Outfile GetInput.exe" && timeout 1 > NUL && move /Y %cd%\GetInput.exe %cd%\SRC\Data\API\ > NUL

if not exist %cd%\SRC\Data\API\Button.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/Button.bat -Outfile Button.bat" && timeout 1 > NUL && move /Y %cd%\Button.bat %cd%\SRC\Data\API\ > NUL

if not exist %cd%\SRC\Data\API\ButtonFunction.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/ButtonFunction.bat -Outfile ButtonFunction.bat" && timeout 1 > NUL && move /Y %cd%\ButtonFunction.bat %cd%\SRC\Data\API\ > NUL

if not exist %cd%\SRC\Batch\Admin\ md %cd%\SRC\Batch\Admin\ > NUL

if not exist %cd%\SRC\Batch\Admin\INST.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/INST.bat -Outfile INST.bat" && timeout 1 > NUL && move /Y %cd%\INST.bat %cd%\SRC\Batch\Admin\ > NUL

if not exist %cd%\SRC\Batch\Admin\UNST.bat powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/UNST.bat -Outfile UNST.bat" && timeout 1 > NUL && move /Y %cd%\UNST.bat %cd%\SRC\Batch\Admin\ > NUL

timeout 3 > NUL

cd SRC\Data\API\ > NUL

start ButtonFunction.bat > NUL