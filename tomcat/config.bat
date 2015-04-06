@echo off

SETX CATALINA_OPTS "-server -XX:PermSize=64M -XX:MaxPermSize=128m" /M

@pause