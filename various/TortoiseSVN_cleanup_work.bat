@echo off
prompt $g

set SVN_LOC_PATH=C:\svn\branches\Master

if not exist "%SVN_LOC_PATH%" (
  echo [ERROR] �Ώۃp�X�����݂��܂���B%SVN_LOC_PATH%
  pause >nul
  exit /b 2
)

echo SVN�̑Ώۃp�X�ɂ��āA�ύX�̎�����s���܂��B
echo �p�X�F%SVN_LOC_PATH%
echo.
echo press any key to continue
pause

echo �ύX�̎�������s��
@echo on
svn revert %SVN_LOC_PATH% --recursive 
@echo off

if not %errorlevel% == 0 (
  echo [ERROR] SVN����������I�����܂���ł����B
  pause >nul
  exit /b 2
)

echo �N���[���A�b�v�����s��
@echo on
svn cleanup %SVN_LOC_PATH%
TortoiseProc.exe /command:cleanup /path:"%SVN_LOC_PATH%" /noui /revert /delunversioned /delignored /refreshshell /externals 
@echo off

if not %errorlevel% == 0 (
  echo [ERROR] SVN����������I�����܂���ł����B
  pause >nul
  exit /b 2
)
echo.
echo ����I�����܂����B
echo �����L�[�������ĉ������B�I�����܂��B
echo press any key to exit
pause >nul
exit /b 2
