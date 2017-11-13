NAME=go
ARCH=amd64
VERSION=1.9.2
FILENAME=go$(VERSION).linux-amd64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Go programming language"
DOWNLOADURL=https://redirector.gvt1.com/edgedl/go/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar -C /usr/local/ -xzf ./$(FILENAME) > /dev/null
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --post-install post-install --before-remove pre-remove /usr/local/go
	rm -rf go*.tar.gz /usr/local/go
	mv *.deb ../../repository/pool/stable/binary-amd64/
