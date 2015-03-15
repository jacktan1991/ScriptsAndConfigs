@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add GROOVY_HOME to System Variable
SETX GROOVY_HOME "%cd%" /M

:: append excutable scripts in GROOVY_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%GROOVY_HOME%%\bin" /M

@pause