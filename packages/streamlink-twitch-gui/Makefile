NAME=streamlink-twitch-gui
ARCH=amd64
VERSION=1.4.0
FILENAME=streamlink-twitch-gui-v1.4.0-linux64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Streamlink Twitch GUI"
DOWNLOADURL=https://github.com/streamlink/streamlink-twitch-gui/releases/download/v1.4.0/streamlink-twitch-gui-v1.4.0-linux64.tar.gz

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install ./streamlink-twitch-gui/add-menuitem.sh --before-remove ./streamlink-twitch-gui/remove-menuitem.sh --description $(DESCRIPTION) --prefix /opt "streamlink-twitch-gui"
	mv *.deb ../../repository/pool/stable/binary-amd64/
