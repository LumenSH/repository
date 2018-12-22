include ../../../config.mk

NAME=lego
VERSION=0.4.1
FILENAME=lego_linux_amd64.tar.xz
DESCRIPTION="Let's Encrypt client and ACME library written in Go"
DOWNLOADURL=https://github.com/xenolf/lego/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv lego_linux_amd64 lego
	chmod +x lego
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin lego
