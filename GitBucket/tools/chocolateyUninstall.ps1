$ErrorActionPreference = 'Stop'
 
$packageName = 'GitBucket'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$gitbucket_dir = $toolsDir + "\gitbucket-4.33\"
$gitbucket_jar = $gitbucket_dir + "gitbucket.jar"
$gitbucket_launcher = $toolsDir + "\gitbucket.cmd"
 
rm $gitbucket_launcher
Uninstall-ChocolateyZipPackage $packageName gitbucket.jar
Uninstall-ChocolateyEnvironmentVariable -VariableName 'GITBUCKET_HOME' -VariableType 'Machine'