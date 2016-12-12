$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.6.1'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'


$packageArgs = @{
  packageName   = 'EclipseJavaSE'
  unzipLocation = $package
  url           = 'https://ftp.fau.de/eclipse/technology/epp/downloads/release/neon/1a/eclipse-java-neon-1a-win32-x86_64.zip'
  softwareName  = 'Eclipse.org Eclipse IDE for Java'
  checksum      = 'bacc358c2587c2b084435486780adea2eae8796c395752a72e8786115747dcadf3e40149a7e0b40aba45fea640e8434ce9f172c1c4be1c99e7afd0c15edcc4c9'
  checksumType  = 'sha512'
}
 
Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'eclipse' -Path $eclipse_exe

refreshenv
 
Update-SessionEnvironment
