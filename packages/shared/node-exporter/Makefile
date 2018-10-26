NAME=node_exporter
ARCH=amd64
VERSION=0.15.2
FILENAME=node_exporter-$(VERSION).linux-amd64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Exporter for machine metrics"
DOWNLOADURL=https://github.com/prometheus/node_exporter/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv node_exporter*/node_exporter .
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./node_exporter=/usr/local/bin/ \
		./systemd/node_exporter.service=/etc/systemd/system/node_exporter.service
