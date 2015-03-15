@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add JAVA_HOME to System Variable
SETX JAVA_HOME "%cd%" /M

:: append JAVA_HOME\bin to PATH Variable
SETX PATH "%OLD_PATH%;%%JAVA_HOME%%\bin" /M

@pause