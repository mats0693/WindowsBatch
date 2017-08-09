@echo off
echo 対象の番号を選択
echo.
echo  1. 処理1
echo  2. 処理2
echo  3. 処理3
echo  4. 処理4
echo  5. 処理5
echo  9. [キャンセル]
choice /c 123459 /t 10 /d 9 /n /m "選択…"
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
echo キャンセルされました。終了します
pause >nul
exit

:syori1
set ENVNAME=処理１
exit /b 0

:syori2
set ENVNAME=処理２
exit /b 0

:syori3
set ENVNAME=処理３
exit /b 0

:syori4
set ENVNAME=処理４
exit /b 0

:syori5
set ENVNAME=処理５
exit /b 0

:syori9
set ENVNAME=
exit /b 0
