@echo off

:start
cls
echo Press 1 for IDA
echo Press 2 for Ghidra
echo Press 3 for x32dbg
echo Press 4 for x64dbg
echo Press 5 for HxD
echo Press 6 for Advanced BAT to Exe Converter
set /p var=
if %var% == 1 goto ida
if %var% == 2 goto nsa
if %var% == 3 goto x32
if %var% == 4 goto x64
if %var% == 5 goto hxd
if %var% == 6 goto b2e

:ida
cls
echo STARTING IDA...
start "" "C:\Program Files\IDA Freeware 8.3\ida64.exe"
::goto middle
goto eof

:nsa
cls
echo STARTING GHIDRA...
start /b "" "C:\Program Files\ghidra_10.3.1_PUBLIC_20230614\ghidra_10.3.1_PUBLIC\ghidraRun.bat"
goto eof

:x32
cls
echo STARTING x32DBG...
start "" "C:\Program Files\snapshot_2023-06-15_13-51\release\x32\x32dbg.exe"
goto middle

:x64
cls
echo STARTING x64DBG...
start "" "C:\Program Files\snapshot_2023-06-15_13-51\release\x64\x64dbg.exe"
goto middle

:hxd
cls
echo STARTING HxD...
start "" "C:\Program Files\HxD\HxD.exe"
goto eof

:b2e
cls
echo STARTING Advanced BAT to Exe Converter...
start "" "C:\Program Files (x86)\Advanced BAT to EXE Converter v4.59\ab2econv459\aB2Econv.exe" 
goto eof

:middle
echo.
echo Proceed (y/n)?
set /p type=
if %type%==y goto start
if %type%==n goto eof

:eof
echo.
