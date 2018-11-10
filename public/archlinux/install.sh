#!/usr/bin/env bash

if [[ ${USER} != "root" ]]; then
	>&2 echo "error: you cannot perform this operation unless you are root."
	exit 1
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

if [ $(grep "lumen" /etc/pacman.conf | wc -l) = "0" ]; then
        print_info 'Adding repository to /etc/pacman.conf'

        cat >> /etc/pacman.conf <<EOF

[lumen]
Server = https://arch.lumen.sh
SigLevel = Never
EOF

else
	print_info 'Repository already added to pacman.conf. Skipping!'
fi

print_info 'Running pacman -Sy...'
exec_cmd 'pacman -Sy'
print_info 'Done!'
