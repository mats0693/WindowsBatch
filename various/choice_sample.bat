@echo off
echo �Ώۂ̔ԍ���I��
echo.
echo  1. ����1
echo  2. ����2
echo  3. ����3
echo  4. ����4
echo  5. ����5
echo  9. [�L�����Z��]
choice /c 123459 /t 10 /d 9 /n /m "�I���c"
if %errorlevel% equ 1 call :syori1
if %errorlevel% equ 2 call :syori2
if %errorlevel% equ 3 call :syori3
if %errorlevel% equ 4 call :syori4
if %errorlevel% equ 5 call :syori5
if %errorlevel% equ 6 call :exit_proc

echo %ENVNAME%
pause >nul
exit

:exit_proc
echo �L�����Z������܂����B�I�����܂�
pause >nul
exit

:syori1
set ENVNAME=�����P
exit /b 0

:syori2
set ENVNAME=�����Q
exit /b 0

:syori3
set ENVNAME=�����R
exit /b 0

:syori4
set ENVNAME=�����S
exit /b 0

:syori5
set ENVNAME=�����T
exit /b 0

:syori9
set ENVNAME=
exit /b 0
