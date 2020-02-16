$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$gradle_home = Join-Path $package 'gradle-6.1.1'
$gradle_bat = Join-Path $gradle_home 'bin/gradle.bat'


$packageArgs = @{
  packageName   = 'Gradle'
  unzipLocation = $package
  url           = 'https://services.gradle.org/distributions/gradle-6.1.1-all.zip'
  softwareName  = 'Gradle Inc. Gradle'
  checksum      = '10065868c78f1207afb3a92176f99a37d753a513dff453abb6b5cceda4058cda'
  checksumType  = 'sha256'
}
 
Install-ChocolateyZipPackage @packageArgs
 
Install-ChocolateyEnvironmentVariable -VariableName 'GRADLE_HOME' -VariableValue $gradle_home -VariableType 'Machine'
Install-BinFile -Name 'gradle' -Path $gradle_bat

refreshenv
 
Update-SessionEnvironment
