@echo off

:: ����BAT�ļ��ŵ�Java��װĿ¼�£���ʡȥ����JAVA_HOME���鷳
SET "CURRENT_PATH=%~dp0"
SET "CURRENT_PATH=%CURRENT_PATH:~0,-1%"

SETX JAVA_HOME "%CURRENT_PATH%" /M

:: ��������ȡϵͳ����PATH��������%%����
for /f "delims=" %%a in ('wmic ENVIRONMENT WHERE "Name='PATH' and UserName='<System>'" GET VariableValue^|findstr "\\"') do (
  set OLD_PATH=%%a
)

:: ���Ǿ�PATH�����Է�����
echo %OLD_PATH% > PATH.bkp

:: ��ȥOLD_PATH��β�ո�
set OLD_PATH=%OLD_PATH%
:loop
if "%OLD_PATH:~-1%"==" " set "OLD_PATH=%OLD_PATH:~0,-1%" & goto loop


SETX PATH "%OLD_PATH%;%%JAVA_HOME%%\bin" /M