include ../../../config.mk

NAME="vegeta"
VERSION=12.2.0
FILENAME=vegeta-${VERSION}-linux-amd64.tar.gz
DESCRIPTION="HTTP load testing tool and library. It's over 9000!"
DOWNLOADURL=https://github.com/tsenart/vegeta/releases/download/cli%2Fv${VERSION}/${FILENAME}

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./vegeta=/usr/local/bin/ \

