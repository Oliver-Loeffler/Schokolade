$ErrorActionPreference = 'Stop'
 
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$gitbucket_dir = $toolsDir + "\gitbucket-4.10"
$gitbucket_jar = $gitbucket_dir + "\gitbucket.jar"
$gitbucket_launcher = $toolsDir + "\gitbucket.cmd"

$packageArgs = @{
  packageName   = 'GitBucket'
  unzipLocation = $toolsDir
  url           = 'https://github.com/gitbucket/gitbucket/releases/download/4.33.0/gitbucket.war'
  softwareName  = 'GitBucket'
  checksum      = '35e190ddb7a2f9760d43617d2e6325c2a745ba66061daa3fa95cc9d871423506'
  checksumType  = 'md5'
  fileFullPath = $gitbucket_jar
}
 
if(!(Test-Path ($env:HOMEDRIVE + $env:HOMEPATH + "\.GitBucket"))) {
	New-Item -ItemType Directory -Force -Path ($env:HOMEDRIVE + $env:HOMEPATH + "\.GitBucket")
}
 
Get-ChocolateyWebFile @packageArgs
Copy-Item ($gitbucket_launcher) ($gitbucket_dir)
Install-BinFile -Name 'gitbucket' -Path $gitbucket_launcher
Install-ChocolateyEnvironmentVariable -VariableName 'GITBUCKET_HOME' -VariableValue $gitbucket_dir -VariableType 'Machine'

refreshenv
 
Update-SessionEnvironment