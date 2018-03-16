#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

DISTRO=$(. /etc/os-release; echo "$ID");

if test -t 1; then
	ncolors=$(which tput > /dev/null && tput colors)
	if test -n "$ncolors" && test $ncolors -ge 8; then
		termcols=$(tput cols)
		bold="$(tput bold)"
		underline="$(tput smul)"
		standout="$(tput smso)"
		normal="$(tput sgr0)"
		black="$(tput setaf 0)"
		red="$(tput setaf 1)"
		green="$(tput setaf 2)"
		yellow="$(tput setaf 3)"
		blue="$(tput setaf 4)"
		magenta="$(tput setaf 5)"
		cyan="$(tput setaf 6)"
		white="$(tput setaf 7)"
	fi
fi

print_info() {
	echo "+ $1"
}

bail() {
	echo 'Error executing command, exiting'
	exit 1
}

exec_cmd_nobail() {
	bash -c "$1" > /dev/null
}

exec_cmd() {
	exec_cmd_nobail "$1" || bail
}

print_bold() {
	title="$1"
	text="$2"

	echo
	echo "${red}================================================================================${normal}"
	echo "${red}================================================================================${normal}"
	echo
	echo -e "  ${bold}${title}${normal}"
	echo
	echo -en "  ${text}"
	echo
	echo "${red}================================================================================${normal}"
	echo "${red}================================================================================${normal}"
}

if [ $DISTRO != "debian" ] && [ $DISTRO != "ubuntu" ]; then
	print_bold "Your distribution, identified as \"${DISTRO}\", is not currently supported."
	exit 1;
fi

print_info 'Running apt-get update...'
exec_cmd 'apt-get update'

print_info 'Installing dependencies...'
exec_cmd 'apt-get install apt-transport-https curl -yqq'

print_info 'Importing key...'
exec_cmd 'wget https://apt.lumen.sh/lumen.gpg -q && apt-key add lumen.gpg && rm lumen.gpg'

exec_cmd "echo 'deb https://apt.lumen.sh stable main' > /etc/apt/sources.list.d/lumen.list"
print_info 'Running apt-get update...'
exec_cmd 'apt-get update'

print_bold 'Done!' 'Successfully installed Lumen Package Repository! Have fun :)'
