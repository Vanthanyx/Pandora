@echo OFF
@Mode 42,15
@Title [ Core Menu ]
Batbox /h 0

:Loop
Call Button  10 4 "INST" 24 4 "UNST" 17 8 "EXIT" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (cd ..\..\..\SRC\Batch\Admin\ && start INST.bat && exit)
if %errorlevel%==2 (cd ..\..\..\SRC\Batch\Admin\ && start UNST.bat && exit)
if %errorlevel%==3 (exit)
goto Loop
