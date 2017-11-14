#/bin/bash

# Build packages
echo "Building packages"

for filename in ./packages/*; do
	cd $filename
	make
	cd ../..
done


echo "Building repository"

# Build repository
cd repository
swift list lumen-apt | awk "/pool\// { print $1 ;}" | xargs -I{} swift download lumen-apt {} --skip-identical
bash .generate.sh
