@echo off
prompt $g

set SVN_LOC_PATH=C:\svn\branches\Master

if not exist "%SVN_LOC_PATH%" (
  echo [ERROR] 対象パスが存在しません。%SVN_LOC_PATH%
  pause >nul
  exit /b 2
)

echo SVNの対象パスについて、変更の取消を行います。
echo パス：%SVN_LOC_PATH%
echo.
echo press any key to continue
pause

echo 変更の取消を実行中
@echo on
svn revert %SVN_LOC_PATH% --recursive 
@echo off

if not %errorlevel% == 0 (
  echo [ERROR] SVN処理が正常終了しませんでした。
  pause >nul
  exit /b 2
)

echo クリーンアップを実行中
@echo on
svn cleanup %SVN_LOC_PATH%
TortoiseProc.exe /command:cleanup /path:"%SVN_LOC_PATH%" /noui /revert /delunversioned /delignored /refreshshell /externals 
@echo off

if not %errorlevel% == 0 (
  echo [ERROR] SVN処理が正常終了しませんでした。
  pause >nul
  exit /b 2
)
echo.
echo 正常終了しました。
echo 何かキーを押して下さい。終了します。
echo press any key to exit
pause >nul
exit /b 2
