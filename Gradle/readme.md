# Gradle 3 Package

This package installs the full Gradle 3.2.1 build tool package, containing Java binaries, sources and documentation. 
Manual download is possible under https://gradle.org/gradle-download/.
GRADLE_HOME environment variable is set as a system variable, so Gradle will be available to all users.


## Package building

Run 'choco pack' to build package.

## Package installation

Run 'choco install Gradle -s "$pwd" -f' on PowerShell to install.
Run 'choco install Gradle '%cd%' -f' on CMD or Bash to install.

or run:

choco install Gradle -source 'c:\path\to\Gradle\' -f

## Removing the package

choco uninstall Gradle

When Gradle was executed or still is running immediately prior to deinstallation,
it may happen that some of Gradle's binary files are not deleted.
Those files may have to be removed manually.
With a default Chocolatey installation, the possibly left over files may be located at: C:\ProgramData\Chocolatey\lib\ChocolateyGUI\tools .