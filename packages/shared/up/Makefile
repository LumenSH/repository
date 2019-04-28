include ../../../config.mk

NAME=up
VERSION=1.2.2
FILENAME=up_$(VERSION)_linux_amd64.tar.gz
DESCRIPTION="Ultimate Plumber is a tool for writing Linux pipes with instant live preview."
DOWNLOADURL=https://github.com/apex/up/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	chmod +x up
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin $(FILENAME)
