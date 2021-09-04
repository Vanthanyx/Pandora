@echo OFF
title [ ... ]

cd ..\..\..\..\

timeout 3 > NUL

RMDIR "%cd%\SRC\" /S /Q
