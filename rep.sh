#!/usr/bin/env bash

CONTAINER_NAME="arch"
TARGET="deb"

FILE="$0"

if [ -L "$0" ]; then
  FILE=$(readlink "$0")
fi

DIR=$(dirname $FILE)

# We start in /repository folder
cd ${DIR}

if [ -e "/usr/sbin/pacman" ]; then
    TARGET="pacman"
fi

case $1 in
    sign)
        echo "Building repository"
        if [ ${TARGET} = "deb" ]; then
            find ./packages/ -name "*.deb" -type f -a -not -path '*.gitkeep*' -exec mv {} /repository/public/debian/pool/stable/binary-amd64/ \;
            find ./public/debian/dists -type f -a -not -path '*.gitkeep*' -exec rm {} \;

            cd /repository/public/debian
            ./.generate.sh
        else
            find ./packages/ -name "*.pkg.tar.xz" -type f -a -not -path '*.gitkeep*' -exec mv {} /repository/public/archlinux/ \;
	        cd /repository/public/archlinux/
	        repo-add lumen.db.tar.gz /repository/public/archlinux/*.pkg.tar.xz
        fi
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
            make TARGET=${TARGET}
        fi
    ;;
esac