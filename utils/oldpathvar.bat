@echo off
:: ��������ȡϵͳ����PATH��������%%����
for /f "delims=" %%a in ('wmic ENVIRONMENT WHERE "Name='PATH' and UserName='<System>'" GET VariableValue^|findstr "\\"') do (
  set OLD_PATH=%%a
)

:: ��ȥOLD_PATH��β�ո�
set OLD_PATH=%OLD_PATH%
:loop
if "%OLD_PATH:~-1%"==" " set "OLD_PATH=%OLD_PATH:~0,-1%" & goto loop

:: ���Ǿ�PATH���ݵ����ýű�Ŀ¼���Է�����
echo %OLD_PATH% > PATH.bkp