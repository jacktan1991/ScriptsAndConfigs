@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add JAVA_HOME to System Variable
SETX JAVA_HOME "%cd%" /M

:: append excutable scripts in JAVA_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%JAVA_HOME%%\bin" /M

@pause