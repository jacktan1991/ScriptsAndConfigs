@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add M2_HOME to System Variable
SETX M2_HOME "%cd%" /M

:: append excutable scripts in M2_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%M2_HOME%%\bin" /M

@pause