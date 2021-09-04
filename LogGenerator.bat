@echo OFF
title [ LogGenerator ]

echo Time: %TIME%>>%cd%\ErrorLogs.txt
echo Date: %DATE%>>%cd%\ErrorLogs.txt

cd ..\..\..\

if not exist SRC\ echo SRC Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\ echo Batch Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Logs\ echo Logs Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Admin\ echo Admin Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Functions\ echo Functions Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\ echo Data Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\API\ echo API Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\Cache\ echo Cache Folder Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

if not exist SRC\Batch\Admin\INST.bat echo INST File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Admin\UNST.bat echo UNST File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Admin\INIT.bat echo INIT File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

if not exist SRC\Batch\Functions\Phase1.bat echo Phase1 File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Functions\Phase2.bat echo Phase2 File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Functions\Phase3.bat echo Phase3 File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Batch\Functions\VolumeSetter.bat echo VolumeSetter File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

if not exist SRC\Data\API\BatBox.exe echo BatBox File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\API\GetInput.exe echo GetInput File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\API\Button.bat echo Button File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\API\ButtonFunction.bat echo ButtonFunction File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

if not exist SRC\Data\Cache\HelpYourself.mp4 echo HelpYourself File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\Cache\Lmao.txt echo Lmao File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt
if not exist SRC\Data\Cache\MessageBox.vbs echo MessageBox File Missing>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

echo If 0 Then No Issues.>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

echo.>>%cd%\SRC\Batch\Logs\ErrorLogs.txt

timeout 1 > NUL