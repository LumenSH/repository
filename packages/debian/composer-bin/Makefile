include ../../../config.mk

NAME=composer-bin
VERSION=2.0.0-alpha2
FILENAME=composer
DESCRIPTION="Dependency Manager for PHP https://getcomposer.org/"
DOWNLOADURL=https://getcomposer.org/download/$(VERSION)/composer.phar

.PHONY: package
package:
	curl -o $(FILENAME) $(DOWNLOADURL)
	chmod +x composer
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION)  \
		./composer=/usr/local/bin/
