$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.6.2'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'


$packageArgs = @{
  packageName   = 'EclipseJavaSE'
  unzipLocation = $package
  url           = 'https://ftp.fau.de/eclipse/technology/epp/downloads/release/neon/2/eclipse-java-neon-2-win32-x86_64.zip'
  softwareName  = 'Eclipse.org Eclipse IDE for Java'
  checksum      = '4a225fc5a35fb9097cde8c5a2e954d5a03104ec014e34ba8585b3b4a9395932d0641ee57c98ce502dfe9012080a43d5bd1bc326259b31b1a56e75ba7987789e2'
  checksumType  = 'sha512'
}
 
Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'eclipse' -Path $eclipse_exe

refreshenv
 
Update-SessionEnvironment
