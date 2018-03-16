#!/bin/bash

./build.sh cleanup

CHANGED=0
git diff --name-only HEAD@{0} HEAD@{2} | while read file ; do
	if [[ $file == packages/* ]] ; then
		echo === Changed file: $file ===
		echo "Compiling package $(dirname $file)"
		./build.sh ./$(dirname $file) > /dev/null 2>&1
		CHANGED = 1
	fi
 	done

if [[ CHANGED == 1 ]] ; then
	./build.sh sign
	./build.sh cleanup
fi

