$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$gradle_home = Join-Path $package 'gradle-4.10.2'
$gradle_bat = Join-Path $gradle_home 'bin/gradle.bat'


$packageArgs = @{
  packageName   = 'Gradle'
  unzipLocation = $package
  url           = 'https://services.gradle.org/distributions/gradle-4.10.2-bin.zip'
  softwareName  = 'Gradle Inc. Gradle'
  checksum      = 'b49c6da1b2cb67a0caf6c7480630b51c70a11ca2016ff2f555eaeda863143a29'
  checksumType  = 'sha256'
}
 
Install-ChocolateyZipPackage @packageArgs
 
Install-ChocolateyEnvironmentVariable -VariableName 'GRADLE_HOME' -VariableValue $gradle_home -VariableType 'Machine'
Install-BinFile -Name 'gradle' -Path $gradle_bat

refreshenv
 
Update-SessionEnvironment
