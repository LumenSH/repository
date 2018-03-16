#/bin/bash

case $1 in
    all)
	./build.sh cleanup
	echo "Building all packages"
        for dir in ./packages/*; do
		echo "Building $dir"
		./build.sh $dir
        done
        cd /repository
        find ./packages/ -name "*.deb" -type f -a -not -path '*.gitkeep*' -exec mv {} /repository/repository/pool/stable/binary-amd64/ \;

	./build.sh build
	./build.sh sign
	./build.sh cleanup
	;;
    sign)
	# remove already existing files
	find ./repository/dists -type f -a -not -path '*.gitkeep*' -exec rm {} \;

	echo "Building repository"
	cd repository
	./.generate.sh
	;;
    cleanup)
	echo "Cleanup packages"
	git checkout -- packages/
	git clean -fd packages/
	;;
    *)
        cd $1
	make
        ;;
esac

