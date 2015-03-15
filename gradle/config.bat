@echo off

::SETX GRADLE_OPTS "-Dgradle.user.home=...\.gradle -Xmx512m" /M
SETX DEFAULT_JVM_OPTS "-Dfile.encoding=UTF-8" /M

:: GRADLE_USER_HOME for gradle local repository, same as -Dgradle.user.home
::SETX GRADLE_USER_HOME "...\.gradle" /M

@pause