include ../../../config.mk

NAME="pax-bundler"
VERSION=0.4.1
DESCRIPTION="The fastest JavaScript bundler in the galaxy."
DOWNLOADURL=https://github.com/nathan/pax/releases/download/pax-v$(VERSION)-alpha/pax-v$(VERSION)-alpha-x86_64-unknown-linux-gnu.tar.gz

.PHONY: package
package:
	wget -O pax.tar.gz $(DOWNLOADURL)
	tar xf pax.tar.gz
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin px

