@ECHO OFF
set GITBUCKET_DATA=%USERPROFILE%\.GitBucket
md %GITBUCKET_DATA%
java -jar %GITBUCKET_HOME%\gitbucket.jar --port=8081 --gitbucket.home=%GITBUCKET_DATA%
pause -1