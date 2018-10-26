#!/usr/bin/env bash

CONTAINER_NAME="arch"

case $1 in
    sign)
        find ./packages/ -name "*.deb" -type f -a -not -path '*.gitkeep*' -exec mv {} /repository/public/debian/pool/stable/binary-amd64/ \;
        find ./public/debian/dists -type f -a -not -path '*.gitkeep*' -exec rm {} \;

        echo "Building repository"
        cd /repository/public/debian
        ./.generate.sh
	;;
	pkgbuild)
	    find ./packages/ -name "*.pkg.tar.xz" -type f -a -not -path '*.gitkeep*' -exec mv {} /repository/public/archlinux/ \;
	    docker exec ${CONTAINER_NAME} "cd /arch/ && repo-add lumen.db.tar.gz /arch/*.pkg.tar.xz"
	;;
    cleanup)
        echo "Cleanup packages"
        git checkout -- packages/
        git clean -fd packages/
    ;;
    *)
        PACKAGE_NAME="$1"

        if [ -d "./packages/debian/${PACKAGE_NAME}" ]; then
            cd "./packages/debian/${PACKAGE_NAME}"
            make TARGET="deb"
        fi

        if [ -d "./packages/archlinux/${PACKAGE_NAME}" ]; then
            cd "./packages/archlinux/${PACKAGE_NAME}"
            make TARGET="pacman"
        fi

        if [ -d "./packages/shared/${PACKAGE_NAME}" ]; then
            cd "./packages/shared/${PACKAGE_NAME}"
            make TARGET="deb"
            make TARGET="pacman"
        fi
    ;;
esac