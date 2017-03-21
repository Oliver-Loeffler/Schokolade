# GitBucket NuGet Package for Chocolatey

Provides a simple solution to install GitBucket git-scm repository manager using Chocolatey NuGet package manager.
Visit https://gitbucket.github.io/gitbucket-news/ for more details.

As GitBucket is a web application, it will launch a HTTP server on port 8081 (which is not GitBucket default).
Right after installation using ``` choco install GitBucket ``` it is recommended to restart PowerShell or Windows command line (CMD).
The GitBucket can be started by typing:

	``` gitbucket ``` 
	
The launch script (gitbucket.cmd) will create a folder ``` \.GitBucket ``` in user home direcory. When the directory exists, the existing content is going to be served by GitBucket.

Thats it!

Your browser will show following sign-in page, where the administrative account has the name and password "root".
![Welcome](https://github.com/Oliver-Loeffler/Schokolade/blob/master/GitBucket/pages/01_homepage.png)

![SignIn](https://github.com/Oliver-Loeffler/Schokolade/blob/master/GitBucket/pages/02_signin.png)

Then, next step would be to adjust all the system settings to personal preferences.
![Setup](https://github.com/Oliver-Loeffler/Schokolade/blob/master/GitBucket/pages/03_setup.PNG)

Finally, a new repository or a new repository group can be created.
![New Repository](https://github.com/Oliver-Loeffler/Schokolade/blob/master/GitBucket/pages/04_newrepo.png)



# Building and Installing the Package

Run 'choco pack' to build package.

Run 'choco install GitBucket -s "$pwd" -f' on PowerShell to install.

Run 'choco install GitBucket '%cd%' -f' on CMD or Bash to install.

or run:

choco install GitBucket -source 'c:\path\to\GitBucket\' -f

