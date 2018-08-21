NAME="frp"
ARCH=amd64
VERSION=0.21.0
FILENAME=frp_${VERSION}_linux_amd64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A fast reverse proxy to help you expose a local server behind a NAT or firewall to the internet."

DOWNLOADURL=https://github.com/fatedier/frp/releases/download/v${VERSION}/${FILENAME}

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv frp*/* .
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./frpc=/usr/local/bin/ \
		./frps=/usr/local/bin/ \
		./frpc_full.ini=/etc/frp/frpc.ini \
		./frps_full.ini=/etc/frp/frps.ini \
		./systemd/frps.service=/etc/systemd/system/frps.service \
		./systemd/frpc.service=/etc/systemd/system/frpc.service

