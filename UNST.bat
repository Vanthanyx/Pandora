@echo OFF
title [ Uninstaller ]

cd ..\..\..\..\

timeout 3 > NUL

RMDIR "%cd%\SRC\" /S /Q
