include ../../../config.mk

NAME=gron
VERSION=0.5.2
FILENAME=gron-linux-amd64-$(VERSION).tgz
DESCRIPTION="Make JSON greppable!"
DOWNLOADURL=https://github.com/tomnomnom/gron/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	chmod +x gron
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin gron
