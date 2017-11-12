NAME=restic
ARCH=amd64
VERSION=0.7.3
FILENAME=restic_$(VERSION)_linux_amd64.bz2
MAINTAINER="<admin@lumen.sh>"

DOWNLOADURL=https://github.com/restic/restic/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	bunzip2 $(FILENAME)
	mv restic* restic
	chmod +x restic
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --prefix /usr/local/bin restic
