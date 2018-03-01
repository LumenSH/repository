NAME="teleport"
ARCH=amd64
VERSION=2.4.2
FILENAME=teleport-v$(VERSION)-linux-amd64-bin.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Modern SSH server for clusters and teams. https://gravitational.com/teleport"

DOWNLOADURL=https://github.com/gravitational/teleport/releases/download/v$(VERSION)/teleport-v$(VERSION)-linux-amd64-bin.tar.gz

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	tar xf $(FILENAME)
	cd teleport
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./teleport/teleport=/usr/local/bin/ \
		./teleport/tsh=/usr/local/bin/ \
		./teleport/tctl=/usr/local/bin/ \
		./teleport/examples/etcd/teleport.yaml=/etc/teleport/
	mv *.deb ../../repository/pool/stable/binary-amd64/

