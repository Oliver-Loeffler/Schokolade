$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$gradle_home = Join-Path $package 'gradle-3.2.1'
$gradle_bat = Join-Path $gradle_home 'bin/gradle.bat'


$packageArgs = @{
  packageName   = 'Gradle'
  unzipLocation = $package
  url           = 'https://services.gradle.org/distributions/gradle-3.2.1-all.zip'
  softwareName  = 'Gradle Inc. Gradle'
  checksum      = 'D44DBA900FF364103E1F45C0F4B27BBE'
  checksumType  = 'md5'
}
 
Install-ChocolateyZipPackage @packageArgs
 
Install-ChocolateyEnvironmentVariable -VariableName 'GRADLE_HOME' -VariableValue $gradle_home -VariableType 'Machine'
Install-BinFile -Name 'gradle' -Path $gradle_bat

refreshenv
 
Update-SessionEnvironment
