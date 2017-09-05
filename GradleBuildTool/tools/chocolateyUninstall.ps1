$ErrorActionPreference = 'Stop'
$packageName = 'GradleInc'
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$gradle_home = Join-Path $package 'gradle-4.1'
$gradle_bat = Join-Path $gradle_home 'bin/gradle.bat'


Uninstall-ChocolateyEnvironmentVariable -VariableName 'GRADLE_HOME' -VariableType 'Machine'
	
Uninstall-BinFile -Name 'gradle' -Path $gradle_bat
Uninstall-ChocolateyZipPackage $packageName gradle-4.1-bin.zip
