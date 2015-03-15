@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add NODEJS_HOME to System Variable
SETX NODEJS_HOME "%cd%" /M

:: append excutable scripts in NODEJS_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%NODEJS_HOME%%\" /M

@pause