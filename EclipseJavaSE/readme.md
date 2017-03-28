# Eclipse.org IDE for Java developers

This package installs the 64bit version of the Java IDE provided by Eclipse.org (Neon.3). 
No additional plugins or conigurations are defined or packaged. The install file downloads the binary package (Zip) from Eclipse.org FTP mirror at Friedrich-Alexander-University Erlangen-Nürnberg.


Manual download is possible under: https://www.eclipse.org/downloads/eclipse-packages/


The IDE will be accessible from command line using the "eclipse" command, a shim is defined. The Eclipse installation is available for all machine users, so new plugins will be effective to all users as well.
The package does not yet declare dependencies (i.e. Java 64bit JRE or JDK). Please ensure that a suitable JRE is available otherwise Eclipse will not start.

## Package building

Run 'choco pack' to build package.

![Demo on CLI](https://github.com/Oliver-Loeffler/Schokolade/blob/master/EclipseJavaSE/pages/01_Pack.png)

## Package installation

Run 'choco install EclipseJavaSE -s "$pwd" -f' on PowerShell to install.
Run 'choco install EclipseJavaSE '%cd%' -f' on CMD or Bash to install.

or run:

choco install EclipseJavaSE -source 'c:\path\to\EclipseJavaSE\' -f

Well in case of upgrading from an earlier version on PowerShell run:

'choco upgrade EclipseJavaSE -s "$pwd" -f'

![Demo on CLI](https://github.com/Oliver-Loeffler/Schokolade/blob/master/EclipseJavaSE/pages/02_Install.png)

## Removing the package

Run 'choco uninstall EclipseJavaSE'

When Eclipse was executed or still is running immediately prior to deinstallation,
it may happen that some of the binary files are not deleted. Those files may have to be removed manually.
With a default Chocolatey installation, the possibly left over files may be located at: C:\ProgramData\Chocolatey\lib\ChocolateyGUI\tools .

## Running Eclipse from PowerShell

Jut run: 'eclipse'

![Demo on CLI](https://github.com/Oliver-Loeffler/Schokolade/blob/master/EclipseJavaSE/pages/03_Launch.png)

When it is the first launch of Eclipse, the IDE is going to ask for a workspace location. 

![Demo on CLI](https://github.com/Oliver-Loeffler/Schokolade/blob/master/EclipseJavaSE/pages/04_Started.png)

## Disclaimer

This is not an official project by Eclipse.org.
Purpose of this project is simply to make Eclipse setup as easy as possible without using the Eclipse Installer.
