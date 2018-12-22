include ../../../config.mk

NAME=streamlink-twitch-gui
VERSION=1.6.0
FILENAME=streamlink-twitch-gui-v$(VERSION)-linux64.tar.gz
DESCRIPTION="Streamlink Twitch GUI"
DOWNLOADURL=https://github.com/streamlink/streamlink-twitch-gui/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --post-install ./streamlink-twitch-gui/add-menuitem.sh --before-remove ./streamlink-twitch-gui/remove-menuitem.sh --description $(DESCRIPTION) --prefix /opt "streamlink-twitch-gui"
