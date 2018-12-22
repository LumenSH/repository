include ../../../config.mk

NAME=upx
VERSION=3.94
FILENAME=upx-$(VERSION)-amd64_linux.tar.xz
DESCRIPTION="UPX is a free, portable, extendable, high-performance executable packer for several executable formats."
DOWNLOADURL=https://github.com/upx/upx/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv upx-$(VERSION)-amd64_linux/upx upx
	chmod +x upx
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin upx
