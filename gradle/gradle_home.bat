@echo off
CD /d %~dp0
CALL oldpathvar.bat

:: add GRADLE_HOME to System Variable
SETX GRADLE_HOME "%cd%" /M

:: append excutable scripts in GRADLE_HOME to PATH Variable
SETX PATH "%OLD_PATH%;%%GRADLE_HOME%%\bin" /M

@pause