NAME=micro
ARCH=amd64
VERSION=1.3.4
FILENAME=micro-$(VERSION)-linux64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="UPX is a free, portable, extendable, high-performance executable packer for several executable formats."
DOWNLOADURL=https://github.com/zyedidia/micro/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv micro-$(VERSION)/micro micro
	chmod +x micro
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin micro
	mv *.deb ../../repository/pool/stable/binary-amd64/
	rm -r micro*
