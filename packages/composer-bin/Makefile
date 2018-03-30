NAME=composer-bin
ARCH=amd64
VERSION=1.6.3
FILENAME=composer
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Dependency Manager for PHP https://getcomposer.org/"
DOWNLOADURL=https://getcomposer.org/download/$(VERSION)/composer.phar

.PHONY: package
package:
	curl -o $(FILENAME) $(DOWNLOADURL)
	sha256sum --strict -c CHECKSUM
	chmod +x composer
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION)  \
		./composer=/usr/local/bin/
