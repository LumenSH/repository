include ../../../config.mk

NAME="ethr"
VERSION=0.2.1
FILENAME=rclone-v$(VERSION)-linux-amd64.deb
DESCRIPTION="Ethr is a Network Performance Measurement Tool for TCP, UDP & HTTP."
DOWNLOADURL=https://github.com/Microsoft/Ethr/files/2646553/ethr.gz

.PHONY: package
package:
	wget $(DOWNLOADURL)
	gunzip ethr.gz
	chmod +x ethr
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) -d python3 --prefix /usr/local/bin ethr
