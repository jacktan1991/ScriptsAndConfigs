@echo off

SETX CLASSPATH ".;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar" /M
SETX JAVA_OPTS "-Dfile.encoding=UTF-8" /M

@pause