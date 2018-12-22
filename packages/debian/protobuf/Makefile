include ../../../config.mk

NAME="protobuf"
VERSION=3.6.1
FILENAME=protoc-$(VERSION)-linux-x86_64.zip
DESCRIPTION="Protocol Buffers - Google's data interchange format"

DOWNLOADURL=https://github.com/google/protobuf/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	unzip $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./bin/protoc=/usr/local/bin/ \
		./include/=/usr/share/include

