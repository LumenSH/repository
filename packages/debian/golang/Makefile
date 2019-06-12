include ../../../config.mk

NAME=go
VERSION=1.12.6
FILENAME=go$(VERSION).linux-amd64.tar.gz
DESCRIPTION="The Go programming language"
DOWNLOADURL=https://dl.google.com/go/$(FILENAME)

.PHONY: package
package:
	curl -o $(FILENAME) $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /usr/local ./go
