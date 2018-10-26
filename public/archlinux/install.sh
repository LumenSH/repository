#!/usr/bin/env bash

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


match=$(grep "lumen" /etc/pacman.conf | wc -l)


if [ $match = "0" ]; then
        print_info 'Adding repository to /etc/pacman.conf'

        cat >> /etc/pacman.conf <<EOF

[lumen]
Server = https://arch.lumen.sh
SigLevel = Never
EOF


fi

print_info 'Running pacman -Sy...'
exec_cmd 'pacman -Sy'

print_info 'Done!'