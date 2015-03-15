@echo off

npm config set cache "%NODEJS_HOME%\node_cache"
npm config set prefix "%NODEJS_HOME%\node_global"
SETX NODE_PATH ".;%%NODEJS_HOME%%\node_global\node_modules" /M

@pause