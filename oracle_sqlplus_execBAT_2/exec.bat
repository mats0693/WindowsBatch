@echo off
prompt $g

set SQLW_1=sqlplus.exe
set SQLW_2=C:\oracle\product\11.2.0\client_1\BIN\sqlplus.exe
set SQLW=%SQLW_1%

set USER=username1
set PASS=password1
set DBNAME=dbname1
set CONNECT_STR=%USER%/%PASS%@%DBNAME%

set SQLFILE_DEF=test.sql
set SQLFILE_DEF=%~n0.sql
set SQLFILE=%1
if "%1" equ "" (
  set SQLFILE=%SQLFILE_DEF%
)
set EXECFILE=%SQLFILE%.TMPSQL
set SPL_LOGFILE=%SQLFILE%.log.txt
set OUTFILE=%SQLFILE%.list

rem ================================================================================
rem == make sql-execute-file
rem ================================================================================
echo 実行用ファイルを作成します。

rem == header parts ============================================
echo -- %SQLFILE%(exec) start > %EXECFILE% 
echo set echo off >> %EXECFILE% 
echo set linesize 4000 >> %EXECFILE% 
echo set colsep , >> %EXECFILE% 
echo set pagesize 0 >> %EXECFILE% 
echo set trimspool on >> %EXECFILE% 
echo show linesize >> %EXECFILE% 
echo set pages 10000 lines 10000 trims on >> %EXECFILE% 
rem echo set heading off >> %EXECFILE% 
rem echo set feedback off >> %EXECFILE% 
echo spool %SPL_LOGFILE% >> %EXECFILE% 

rem == content main parts ======================================
echo -- %SQLFILE%(exec) main >> %EXECFILE% 
copy %EXECFILE% + %SQLFILE% %EXECFILE%

rem == footer parts ============================================
echo spool off >> %EXECFILE%
echo exit >> %EXECFILE%
echo -- %SQLFILE%(exec) end >> %EXECFILE% 

rem ================================================================================
rem == execute sql-execute-file
rem ================================================================================
echo SQLを実行します。
%SQLW% -s %CONNECT_STR% @%EXECFILE%

echo 実行しました。
pause
exit
