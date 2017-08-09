@echo off
prompt $g

set YYYYMMDD=%DATE:/=%
set HHMMSS=%TIME: =0%
set HHMMSS=%HHMMSS::=%
set HHMMSS=%HHMMSS:.=%
set HHMMSS=%HHMMSS:~0,6%
set DATETIME_STR=%YYYYMMDD%_%HHMMSS%

set PATH0=%PATH%
echo %PATH0%>PATH0_%DATETIME_STR%.TXT

set PATH1=%PATH%
set PATH1=%PATH1%;\bin
set PATH1=%PATH1%;C:\Program Files\TortoiseSVN\bin
set PATH1=%PATH1%;C:\Program Files\Java\jdk1.7.0_75
set PATH1=%PATH1%;
echo %PATH1%>PATH1_%DATETIME_STR%.TXT

pause
