#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

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
        print_info "$1"
        exec_cmd_nobail "$1" || bail
}

print_info 'Running apt-get update...'
exec_cmd 'apt-get update'

print_info 'Installing dependencies...'
exec_cmd 'apt-get install -yqq apt-transport-https curl'

print_info 'Importing key...'
exec_cmd 'wget https://apt.lumen.sh/lumen.gpg -q && apt-key add lumen.gpg && rm lumen.gpg'

exec_cmd "echo 'deb https://apt.lumen.sh stable main' > /etc/apt/sources.list.d/lumen.list"
print_info 'Running apt-get update...'
exec_cmd 'apt-get update'