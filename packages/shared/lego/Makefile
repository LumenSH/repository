include ../../../config.mk

NAME=lego
VERSION=2.5.0
FILENAME=lego_v$(VERSION)_linux_amd64.tar.gz
DESCRIPTION="Let's Encrypt client and ACME library written in Go"
DOWNLOADURL=https://github.com/go-acme/lego/releases/download/v$(VERSION)/lego_v$(VERSION)_linux_amd64.tar.gz

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	chmod +x lego
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin lego
