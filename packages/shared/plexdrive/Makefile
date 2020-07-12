include ../../../config.mk

NAME=plexdrive
VERSION=5.1.0
DESCRIPTION="Plexdrive mounts your Google Drive FUSE filesystem (optimized for media playback)"

.PHONY: package
package:
        wget https://github.com/plexdrive/plexdrive/releases/download/$(VERSION)/plexdrive-linux-amd64
        chmod +x plexdrive-linux-amd64
        mv plexdrive-linux-amd64 plexdrive
        fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin plexdrive
