include ../../../config.mk

NAME="traefik"
VERSION=1.7.8
FILENAME=teleport-v$(VERSION)-linux-amd64-bin.tar.gz
DESCRIPTION="Træfik, a modern reverse proxy https://traefik.io"
DOWNLOADURL=https://github.com/containous/traefik/releases/download/v$(VERSION)/traefik_linux-amd64

.PHONY: package
package:
	wget -O traefik $(DOWNLOADURL)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./traefik=/usr/local/bin/ \

