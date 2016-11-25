# Apache Ivy as NuGet package for Chocolatey

As the Ivy package on http://www.chocolatey.org fails to install due to a broken MD5 hash, this package was written where just another Apache mirror is used for Ivy download.

Run 'choco pack' to build package.

Run 'choco install ApacheIvy -s "$pwd" -f' on PowerShell to install.

Run 'choco install ApacheIvy '%cd%' -f' on CMD or Bash to install.


or run:

choco install ApacheIvy -source 'c:\path\to\ApacheIvy\' -f

