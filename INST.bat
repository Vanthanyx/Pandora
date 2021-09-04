@echo OFF

cd ..\..\..\

md SRC\ > NUL
md SRC\Batch\ > NUL
md SRC\Batch\Logs\ > NUL
md SRC\Batch\Functions\ > NUL
md SRC\Data\ > NUL
md SRC\Data\API\ > NUL
md SRC\Data\Cache\ > NUL

powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/UNST.bat -Outfile UNST.bat" && timeout 1 > NUL && move /Y %cd%\UNST.bat %cd%\SRC\Batch\Admin\ > NUL

move /Y %cd%\INIT.bat %cd%\SRC\Batch\Admin\

@Rem 'powershell -command "Invoke-WebRequest https://github.com/Vanthanyx/Pandora/raw/main/INIT.bat -Outfile INIT.bat" && timeout 1 > NUL && move /Y %cd%\INIT.bat %cd%\SRC\Batch\Admin\ > NUL'
