include ../../../config.mk

NAME="gotty"
VERSION=2.0.0
FILENAME=gotty_$(VERSION)-alpha.3_linux_amd64.tar.gz
DESCRIPTION="Share your terminal as a web application"
DOWNLOADURL=https://github.com/yudai/gotty/releases/download/v$(VERSION)-alpha.3/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./gotty=/usr/local/bin/ \

