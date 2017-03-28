$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.6.3'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'


$packageArgs = @{
  packageName   = 'EclipseJavaSE'
  unzipLocation = $package
  url           = 'https://ftp.fau.de/eclipse/technology/epp/downloads/release/neon/3/eclipse-java-neon-3-win32-x86_64.zip'
  softwareName  = 'Eclipse.org Eclipse IDE for Java'
  checksum      = 'd1c6111bad30b5aeb6253fe2fbac636b6b35abb5b554455ed3a89061331cd30812420b0516151ef813b9cf89b7b498e707964ced6d5354c8b754d4258eead668'
  checksumType  = 'sha512'
}
 
Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'eclipse' -Path $eclipse_exe

refreshenv
 
Update-SessionEnvironment
