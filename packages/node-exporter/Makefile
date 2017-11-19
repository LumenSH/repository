NAME=node_exporter
ARCH=amd64
VERSION=0.15.1
FILENAME=node_exporter-$(VERSION).linux-amd64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Exporter for machine metrics"
DOWNLOADURL=https://github.com/prometheus/node_exporter/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL) > /dev/null
	tar xf $(FILENAME)
	mv node_exporter*/node_exporter .
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin node_exporter
	mv *.deb ../../repository/pool/stable/binary-amd64/
