$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$eclipse_home = Join-Path $package 'eclipse-4.7'
$eclipse_exe = Join-Path $eclipse_home 'eclipse/eclipse.exe'


$packageArgs = @{
  packageName   = 'EclipseJavaSE'
  unzipLocation = $package
  url           = 'https://ftp.fau.de/eclipse/technology/epp/downloads/release/oxygen/R/eclipse-java-oxygen-R-win32-x86_64.zip'
  softwareName  = 'Eclipse.org Eclipse IDE for Java'
  checksum      = 'aa41bced7699b933fac9b254de1609edfec7f2baac89a5a262e92d9119561a6b19fb367a65946ced7ab718f640b74b51f753ed685aeeb45b50f533e6131ac85a'
  checksumType  = 'sha512'
}
  
Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name 'eclipse' -Path $eclipse_exe

refreshenv
 
Update-SessionEnvironment
