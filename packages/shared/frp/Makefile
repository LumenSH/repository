include ../../../config.mk

NAME="frp"
VERSION=0.27.0
FILENAME=frp_${VERSION}_linux_amd64.tar.gz
DESCRIPTION="A fast reverse proxy to help you expose a local server behind a NAT or firewall to the internet."
DOWNLOADURL=https://github.com/fatedier/frp/releases/download/v${VERSION}/${FILENAME}

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv frp*/frpc* .
	mv frp*/frps* .
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./frpc=/usr/local/bin/ \
		./frps=/usr/local/bin/ \
		./frpc_full.ini=/etc/frp/frpc.ini \
		./frps_full.ini=/etc/frp/frps.ini \
		./systemd/frps.service=/etc/systemd/system/frps.service \
		./systemd/frpc.service=/etc/systemd/system/frpc.service

