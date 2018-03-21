#!/bin/bash

./build.sh cleanup

git diff --name-only HEAD@{0} HEAD@{1} | while read file ; do
	if [[ $file == packages/* ]] ; then
		echo === Changed file: $file ===
		echo "Compiling package $(dirname $file)"
		./build.sh ./$(dirname $file) > /dev/null 2>&1
	fi
done

./build.sh sign
./build.sh cleanup
