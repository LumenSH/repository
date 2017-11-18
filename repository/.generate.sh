#!/bin/bash

# amd64
apt-ftparchive -c .dev_repo packages pool/stable/binary-amd64 > dists/stable/main/binary-amd64/Packages
gzip -fk dists/stable/main/binary-amd64/Packages
rm -rf dists/stable/main/binary-amd64/Release
rm -rf dists/stable/main/binary-amd64/Release.gpg
apt-ftparchive -c .dev_repo release dists/stable/main/binary-amd64 > dists/stable/main/binary-amd64/Release

# i386
apt-ftparchive -c .dev_repo packages pool/stable/binary-i386 > dists/stable/main/binary-i386/Packages
gzip -fk dists/stable/main/binary-i386/Packages
rm -rf dists/stable/main/binary-i386/Release
rm -rf dists/stable/main/binary-i386/Release.gpg
apt-ftparchive -c .dev_repo release dists/stable/main/binary-i386 > dists/stable/main/binary-i386/Release

rm -rf dists/stable/Release
rm -rf dists/stable/Release.gpg
apt-ftparchive -c .dev_repo release dists/stable> dists/stable/Release

