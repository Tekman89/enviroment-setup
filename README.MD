# About Enviroment-setUp

This environment setup aims to expedite and automatize the migration from one machine to another.
Relies heavily on brew.

## Features
+ [Brew](https://raw.githubusercontent.com/Homebrew/brew) reliant;
+ Automatization of kegs and casks, configured in a .txt file;


## How to use:
1. Clone the repo.
2. Configure your own environment by editing the txt files.
3. Use `brew list > brew/brew-install.txt` to import binaries to the txt file for further use.
4. Use `brew cask list > brew/brew-cask-install.txt` to import the casks for further use.
5. Use `apm list --installed --bare | grep '^[^@]\+' -o > atom/plugins.txt` to import all packages installed in atom for further use.
6. Create your own repo and clone when you need it. When using just type `./run-me.sh`
