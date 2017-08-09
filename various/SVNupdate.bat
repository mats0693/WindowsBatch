@echo off
prompt $g

set SVN_LOC_PATH=C:\svn\branches\Master\

@echo on

cd %SVN_LOC_PATH%
svn info
svn update

pause
