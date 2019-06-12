include ../../../config.mk

NAME="acme.sh"
VERSION=2.8.1
FILENAME=acme.sh
DESCRIPTION="A pure Unix shell script implementing ACME client protocol"
DOWNLOADURL=https://raw.githubusercontent.com/Neilpang/acme.sh/$(VERSION)/acme.sh

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x acme.sh
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /usr/local/bin acme.sh
