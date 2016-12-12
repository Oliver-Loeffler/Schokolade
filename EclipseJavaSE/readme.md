# Eclipse.org IDE for Java developers

This package installs the 64bit version of the Java IDE provided by Eclipse.org (Neon.1). 
No additional plugins or conigurations are defined or packaged. The install file downloads the binary package (Zip) from Eclipse.org FTP mirror at Friedrich-Alexander-University Erlangen-Nürnberg.
Manual download is possible under: https://www.eclipse.org/downloads/eclipse-packages/
The IDE will be accessible from command line using the "eclipse" command, a shim is defined.

## Package building

Run 'choco pack' to build package.

## Package installation

Run 'choco install EclipseJavaSE -s "$pwd" -f' on PowerShell to install.
Run 'choco install EclipseJavaSE '%cd%' -f' on CMD or Bash to install.

or run:

choco install EclipseJavaSE -source 'c:\path\to\EclipseJavaSE\' -f

## Removing the package

Run 'choco uninstall EclipseJavaSE'

When Eclipse was executed or still is running immediately prior to deinstallation,
it may happen that some of the binary files are not deleted. Those files may have to be removed manually.
With a default Chocolatey installation, the possibly left over files may be located at: C:\ProgramData\Chocolatey\lib\ChocolateyGUI\tools .

## Disclaimer

This is not an official project by Eclipse.org.
Purpose of this project is simply to make Eclipse setup as easy as possible without using the Eclipse Installer.
