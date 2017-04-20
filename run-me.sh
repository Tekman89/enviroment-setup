#!/usr/bin/env bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`

whatTodo="install"


#####Install brew, cask's and binarys#####
echo "${green}Installling Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if ! [ $(which "brew") ] ; then
	echo "${red}Failed${reset}"
	exit 0
else
	echo "${green}Brew installed${reset}"
fi

#call to working function
work 

function binary {
	for cask in $(cat brew/brew-install.txt)
	do
		echo "${blue}${cask}${reset} is being installed"
		(set -x; brew ${whatTodo} $cask)
	done
}


function cask {
	for cask in $(cat brew/brew-cask-install.txt)
	do
		(set -x; brew cask ${whatTodo} $cask)
	done
}

#apm upgrade -c=false to don't prompt for confirmation
function atomPrepare {
		(set -x; apm ${whatTodo} --packages-file atom/plugins.txt)
		(set -x; apm upgrade -c=false)
}


function brewStuff {
	binary
	cask
	`cp binarys/upgrade /usr/local/bin`
}

function work {
	brewStuff
	atomPrepare
	`cp bash-configuration/* ~/`
	`cp ssh/config ~/.ssh/`

}
