@echo off
prompt $g

set YYYYMMDD=%DATE:/=%
set HHMMSS=%TIME: =0%
set HHMMSS=%HHMMSS::=%
set HHMMSS=%HHMMSS:.=%
set HHMMSS=%HHMMSS:~0,6%
set DATETIME_STR=%YYYYMMDD%_%HHMMSS%

set CURR_DIR=%~dp0
set FR_PATH=C:\work\
set TO_PATH=%CURR_DIR%\work_%DATETIME_STR%\
set COPYEXT=*.txt

echo From PathÅF%FR_PATH%
echo To Path  ÅF%TO_PATH%
echo ExtentionÅF%COPYEXT%

xcopy %FR_PATH%%COPYEXT% %TO_PATH% /s

pause
