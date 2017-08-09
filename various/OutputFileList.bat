@echo off
prompt $g

set YYYYMMDD=%DATE:/=%
set HHMMSS=%TIME: =0%
set HHMMSS=%HHMMSS::=%
set HHMMSS=%HHMMSS:.=%
set HHMMSS=%HHMMSS:~0,6%
set DATETIME_STR=%YYYYMMDD%_%HHMMSS%

set curr_dir=%~dp0
set out_file=%curr_dir%listup_%DATETIME_STR%.txt
set check_dir=C:\work\
set file_ptn=*.txt

echo ==================================================================
echo == outputFileList.bat
echo == 
echo == check directoryF
echo == %check_dir%
echo == 
echo == check file patternF
echo == %file_ptn%
echo == 
echo == resultF
echo == %out_file%
echo == 
echo ==================================================================

cd /d %~dp0
echo on

dir %check_dir%%file_ptn% /a-d /s /b > %out_file%

pause
