NAME=up
ARCH=amd64
VERSION=0.2.1
FILENAME=up
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Ultimate Plumber is a tool for writing Linux pipes with instant live preview."
DOWNLOADURL=https://github.com/akavel/up/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x up
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin $(FILENAME)
