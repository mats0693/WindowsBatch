
@echo off
prompt $g

rem ############################################################
rem ## 
rem ## 環境設定
rem ## 
rem ############################################################
:INIT_SETENV

set SQLW_1=sqlplus.exe
set SQLW_2=C:\oracle\product\11.2.0\client_1\BIN\sqlplus.exe
set SQLW=%SQLW_1%

set USER=TESTUSERNAME
set PASS=TESTPASSWORD
set DBNAME=TESTDBNAME
set CONNECT_STR=%USER%/%PASS%@%DBNAME%

rem ** SQLファイル名設定
rem ** 引数が指定された場合、対象のSQLファイルを実行する
rem ** 引数なしの場合はデフォルトのSQL(バッチファイルと同名のSQL)を実行する
rem set SQLFILE_DEF=exec.sql
set SQLFILE_DEF=%~n0.sql
set SQLFILE=%1
if "%1" EQU "" (
  set SQLFILE=%SQLFILE_DEF%
)

echo USER: %USER%
echo DBNAME: %DBNAME%
echo で以下を実行します。よろしいですか？
echo %SQLFILE%
echo.
echo 実行する場合は何かキーを押してください。
echo キャンセル：Ctrl＋C
echo.
pause >nul
if not exist "%SQLFILE%" (
  echo [ERROR] 対象ファイルが存在しません。%SQLFILE%
  echo 処理を終了します。
  pause >nul
  exit /b 2
)

rem ############################################################
rem ## 
rem ## メイン処理
rem ## 
rem ############################################################
:MAIN

rem ** SQL PLUSでスクリプト実行
echo %SQLFILE% を実行します。

%SQLW% -s %CONNECT_STR% @%SQLFILE%

echo %SQLFILE% を実行しました。

pause >NUL

:END_PROC

rem ** 終了

rem exit

