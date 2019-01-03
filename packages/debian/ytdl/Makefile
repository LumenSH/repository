include ../../../config.mk

NAME=ytdl
VERSION=2019.01.02
FILENAME=youtube-dl
DESCRIPTION="Fast, secure, efficient backup program"
DOWNLOADURL=https://github.com/rg3/youtube-dl/releases/download/$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x youtube-dl
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) -d python3 --prefix /usr/local/bin youtube-dl
