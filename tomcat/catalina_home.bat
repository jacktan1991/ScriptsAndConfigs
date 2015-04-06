@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add CATALINA_HOME to System Variable
SETX CATALINA_HOME "%cd%" /M

:: append excutable scripts in CATALINA_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%CATALINA_HOME%%\bin" /M

@pause