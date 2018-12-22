include ../../../config.mk

NAME="roadrunner"
VERSION="1.2.7"
FILENAME="roadrunner-$(VERSION)-linux-amd64.tar.gz"
DESCRIPTION="HTTP load testing tool and library. It's over 9000!"
DOWNLOADURL="https://github.com/spiral/roadrunner/releases/download/v$(VERSION)/$(FILENAME)"

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv roadrunner-$(VERSION)-linux-amd64/rr .
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./rr=/usr/local/bin/ \

