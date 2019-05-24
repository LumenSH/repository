include ../../../config.mk

NAME=borgbackup
VERSION=1.1.10
DESCRIPTION="Fast, secure, efficient backup program"
DOWNLOADURL=https://github.com/borgbackup/borg/releases/download/$(VERSION)/borg-linux64

.PHONY: package
package:
	wget $(DOWNLOADURL)
	mv borg-linux64 borg
	chmod +x borg
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./borg=/usr/local/bin/
