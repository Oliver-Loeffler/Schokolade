$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.7.1'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'


$packageArgs = @{
  packageName   = 'EclipseJavaSE'
  unzipLocation = $package
  url           = 'http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/oxygen/1a/eclipse-java-oxygen-1a-win32-x86_64.zip'
  softwareName  = 'Eclipse.org Eclipse IDE for Java'
  checksum      = '9E5CC14236DB2A7712EF18D5DDC636A863F2DB6BA0A9E7F266353698369D1232D5FF6903001C3E761A661B6DDB3DF06DA3F69EEC7EA205D3F59F1B055C024077'
  checksumType  = 'sha512'
}
  
Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'eclipse' -Path $eclipse_exe

refreshenv
 
Update-SessionEnvironment
