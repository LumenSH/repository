include ../../../config.mk

NAME=restic
VERSION=0.11.0
FILENAME=restic_$(VERSION)_linux_amd64.bz2
DESCRIPTION="Fast, secure, efficient backup program"
DOWNLOADURL=https://github.com/restic/restic/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	bunzip2 $(FILENAME)
	mv restic* restic
	chmod +x restic
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./restic=/usr/local/bin/
