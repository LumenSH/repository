NAME="traefik"
ARCH=amd64
VERSION=1.6.0
FILENAME=teleport-v$(VERSION)-linux-amd64-bin.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Træfik, a modern reverse proxy https://traefik.io"
DOWNLOADURL=https://github.com/containous/traefik/releases/download/v$(VERSION)/traefik_linux-amd64

.PHONY: package
package:
	wget -O traefik $(DOWNLOADURL)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./traefik=/usr/local/bin/ \

