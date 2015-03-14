@echo off

:: 将本BAT文件放到Java安装目录下，可省去输入JAVA_HOME的麻烦
SET "CURRENT_PATH=%~dp0"
SET "CURRENT_PATH=%CURRENT_PATH:~0,-1%"

SETX JAVA_HOME "%CURRENT_PATH%" /M

:: 完整的提取系统变量PATH，并保留%%引用
for /f "delims=" %%a in ('wmic ENVIRONMENT WHERE "Name='PATH' and UserName='<System>'" GET VariableValue^|findstr "\\"') do (
  set OLD_PATH=%%a
)

:: 考虑旧PATH备份以防不测
echo %OLD_PATH% > PATH.bkp

:: 除去OLD_PATH中尾空格
set OLD_PATH=%OLD_PATH%
:loop
if "%OLD_PATH:~-1%"==" " set "OLD_PATH=%OLD_PATH:~0,-1%" & goto loop


SETX PATH "%OLD_PATH%;%%JAVA_HOME%%\bin" /M