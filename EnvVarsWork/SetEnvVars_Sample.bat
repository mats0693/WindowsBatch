@echo off
prompt $g

rem SETX コマンドで環境変数を永続的に設定する - Qiita
rem http://qiita.com/rohinomiya/items/cf5236678b3459da9017
rem SETX /?
rem ユーザー環境変数に値をセットする場合 SETX [環境変数名] [値]
rem システム環境変数に値をセットする場合 SETX /M [環境変数名] [値]

@echo on
echo backup System environment variable Path 
SETX Path_Now_User "%PATH%"
SETX /M Path_Now_Sys "%PATH%"
pause
