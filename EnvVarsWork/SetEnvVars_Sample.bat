@echo off
prompt $g

rem SETX �R�}���h�Ŋ��ϐ����i���I�ɐݒ肷�� - Qiita
rem http://qiita.com/rohinomiya/items/cf5236678b3459da9017
rem SETX /?
rem ���[�U�[���ϐ��ɒl���Z�b�g����ꍇ SETX [���ϐ���] [�l]
rem �V�X�e�����ϐ��ɒl���Z�b�g����ꍇ SETX /M [���ϐ���] [�l]

@echo on
echo backup System environment variable Path 
SETX Path_Now_User "%PATH%"
SETX /M Path_Now_Sys "%PATH%"
pause
