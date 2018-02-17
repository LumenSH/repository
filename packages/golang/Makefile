NAME=go
ARCH=amd64
VERSION=1.10
FILENAME=go$(VERSION).linux-amd64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Go programming language"
DOWNLOADURL=https://dl.google.com/go/$(FILENAME)

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	tar -C /usr/local/ -xzf ./$(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --post-install post-install --before-remove pre-remove /usr/local/go
	rm -rf go*.tar.gz /usr/local/go
	mv *.deb ../../repository/pool/stable/binary-amd64/
