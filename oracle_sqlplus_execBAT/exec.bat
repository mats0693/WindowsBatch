
@echo off
prompt $g

rem ############################################################
rem ## 
rem ## ���ݒ�
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

rem ** SQL�t�@�C�����ݒ�
rem ** �������w�肳�ꂽ�ꍇ�A�Ώۂ�SQL�t�@�C�������s����
rem ** �����Ȃ��̏ꍇ�̓f�t�H���g��SQL(�o�b�`�t�@�C���Ɠ�����SQL)�����s����
rem set SQLFILE_DEF=exec.sql
set SQLFILE_DEF=%~n0.sql
set SQLFILE=%1
if "%1" EQU "" (
  set SQLFILE=%SQLFILE_DEF%
)

echo USER: %USER%
echo DBNAME: %DBNAME%
echo �ňȉ������s���܂��B��낵���ł����H
echo %SQLFILE%
echo.
echo ���s����ꍇ�͉����L�[�������Ă��������B
echo �L�����Z���FCtrl�{C
echo.
pause >nul
if not exist "%SQLFILE%" (
  echo [ERROR] �Ώۃt�@�C�������݂��܂���B%SQLFILE%
  echo �������I�����܂��B
  pause >nul
  exit /b 2
)

rem ############################################################
rem ## 
rem ## ���C������
rem ## 
rem ############################################################
:MAIN

rem ** SQL PLUS�ŃX�N���v�g���s
echo %SQLFILE% �����s���܂��B

%SQLW% -s %CONNECT_STR% @%SQLFILE%

echo %SQLFILE% �����s���܂����B

pause >NUL

:END_PROC

rem ** �I��

rem exit

