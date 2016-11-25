$ErrorActionPreference = 'Stop'
 
$packageName = 'ApacheIvy'
 
Uninstall-ChocolateyZipPackage $packageName apache-ivy-2.4.0-bin.zip
Remove-Item ($env:ANT_HOME + "\lib\ivy-2.4.0.jar")