include ../../../config.mk

NAME="teleport"
VERSION=3.2.4
FILENAME=teleport-v$(VERSION)-linux-amd64-bin.tar.gz
DESCRIPTION="Modern SSH server for clusters and teams. https://gravitational.com/teleport"

DOWNLOADURL=https://get.gravitational.com/teleport-v$(VERSION)-linux-amd64-bin.tar.gz

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	cd teleport
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./teleport/teleport=/usr/local/bin/ \
		./teleport/tsh=/usr/local/bin/ \
		./teleport/tctl=/usr/local/bin/ \
		./teleport/examples/etcd/teleport.yaml=/etc/teleport/

