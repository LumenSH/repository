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
bash .generate.sh
