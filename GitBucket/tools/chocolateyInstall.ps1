$ErrorActionPreference = 'Stop'
 
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$gitbucket_dir = $toolsDir + "\gitbucket-4.10"
$gitbucket_jar = $gitbucket_dir + "\gitbucket.jar"
$gitbucket_launcher = $toolsDir + "\gitbucket.cmd"

$packageArgs = @{
  packageName   = 'GitBucket'
  unzipLocation = $toolsDir
  url           = 'https://github.com/gitbucket/gitbucket/releases/download/4.10/gitbucket.war'
  softwareName  = 'GitBucket'
  checksum      = '9cebbe8af2f8190dc9a0d6e01bb25d5a'
  checksumType  = 'md5'
  fileFullPath = $gitbucket_jar
}
 
if(!(Test-Path ($env:HOMEPATH + "\.GitBucket"))) {
   mkdir ($env:HOMEPATH + "\.GitBucket")
}
 
Get-ChocolateyWebFile @packageArgs
Copy-Item ($gitbucket_launcher) ($gitbucket_dir)
Install-BinFile -Name 'gitbucket' -Path $gitbucket_launcher
Install-ChocolateyEnvironmentVariable -VariableName 'GITBUCKET_HOME' -VariableValue $gitbucket_dir -VariableType 'Machine'

refreshenv
 
Update-SessionEnvironment