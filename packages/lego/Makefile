NAME=lego
ARCH=amd64
VERSION=0.4.1
FILENAME=lego_linux_amd64.tar.xz
MAINTAINER="<admin@lumen.sh>"

DOWNLOADURL=https://github.com/xenolf/lego/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv lego_linux_amd64 lego
	chmod +x lego
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --prefix /usr/local/bin lego
	mv *.deb ../../repository/pool/stable/binary-amd64/
