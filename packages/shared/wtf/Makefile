include ../../../config.mk

NAME=wtf
VERSION=0.8.0
DESCRIPTION="A personal information dashboard for your terminal"
DOWNLOADURL=https://github.com/wtfutil/wtf/releases/download/$(VERSION)/wtf_$(VERSION)_linux_amd64.tar.gz

.PHONY: package
package:
	wget -O wtf.tar.gz $(DOWNLOADURL)
	tar xfv wtf.tar.gz
	mv wtf_*/wtf .
	chmod +x wtf
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./wtf=/usr/local/bin/
