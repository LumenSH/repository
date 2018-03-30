#!/bin/bash

LASTCOMMIT=$(git log -1 --pretty=format:"%H")
trap 'echo Interrupted because of an error && git reset --hard ${LASTCOMMIT} && git clean -fd .' ERR
set -e;

./build.sh cleanup
git fetch
COMMITS=$(git log --reverse --pretty=format:"%h" ..origin/master)
git pull

for commit in $COMMITS; do
	echo -e "=== Commit '\e[4;37m$(git log --format=%B -n 1 ${commit})\e[0m' \e[0;33m(${commit}) \e[0m==="
	git diff --name-only HEAD ${commit} | while read file ; do
		if [[ $file == packages/*/Makefile ]];  then
			printf " Compiling ${file} ... "
			./build.sh ./$(dirname $file) > /dev/null 2>&1
			printf "done!\n"
		fi
	done
done

./build.sh sign
./build.sh cleanup

