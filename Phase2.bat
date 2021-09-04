@echo OFF
title [ Phase 2 ]

for /l %%x in (1, 1, 15) do (
   start /max cmd
)

cd ..\..\..\ > NUL

timeout 3 > NUL

start %cd%\SRC\Batch\Functions\Phase3.bat


pause > NUL
