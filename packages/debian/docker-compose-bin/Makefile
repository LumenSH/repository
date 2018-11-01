NAME=docker-compose-bin
ARCH=amd64
VERSION=1.23.1
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Define and run multi-container applications with Docker https://docs.docker.com/compose/"
DOWNLOADURL=https://github.com/docker/compose/releases/download/$(VERSION)/docker-compose-Linux-x86_64
FILENAME=docker-compose

.PHONY: package
package:
	wget -O $(FILENAME) $(DOWNLOADURL)
	chmod +x $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin docker-compose
