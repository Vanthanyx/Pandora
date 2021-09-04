@echo OFF
@Mode 42,15
@Title [ ... ]
Batbox /h 0

:Loop
Call Button  10 4 "INST" 24 4 "UNST" 17 8 "EXIT" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (start "../../SRC/Batch/Admin/INST.bat")
if %errorlevel%==2 (start "../../SRC/Batch/Admin/UNST.bat")
if %errorlevel%==3 (exit)
goto Loop
