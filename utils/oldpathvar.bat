@echo off
:: 完整的提取系统变量PATH，并保留%%引用
for /f "delims=" %%a in ('wmic ENVIRONMENT WHERE "Name='PATH' and UserName='<System>'" GET VariableValue^|findstr "\\"') do (
  set OLD_PATH=%%a
)

:: 除去OLD_PATH中尾空格
set OLD_PATH=%OLD_PATH%
:loop
if "%OLD_PATH:~-1%"==" " set "OLD_PATH=%OLD_PATH:~0,-1%" & goto loop

:: 考虑旧PATH备份到调用脚本目录下以防不测
echo %OLD_PATH% > PATH.bkp