NAME=restic
ARCH=amd64
VERSION=2018.03.14
FILENAME=youtube-dl
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Fast, secure, efficient backup program"
DOWNLOADURL=https://github.com/rg3/youtube-dl/releases/download/$(VERSION)/youtube-dl

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	chmod +x restic
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin youtube-dl
	mv *.deb ../../repository/pool/stable/binary-amd64/
