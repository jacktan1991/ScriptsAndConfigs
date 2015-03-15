@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add GIT_HOME to System Variable
SETX GIT_HOME "%cd%" /M

:: append excutable scripts in GIT_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%GIT_HOME%%\;%%GIT_HOME%%\cmd" /M

@pause