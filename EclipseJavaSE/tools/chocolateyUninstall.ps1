$ErrorActionPreference = 'Stop'
$packageName = 'EclipseJavaSE'
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.7'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'

Uninstall-BinFile -Name 'eclipse' -Path $eclipse_exe
Uninstall-ChocolateyZipPackage $packageName eclipse-java-oxygen-R-win32-x86_64.zip
