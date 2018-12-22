include ../../../config.mk

NAME=presla
VERSION=0.0.10
FILENAME=presla-v$(VERSION)-linux-amd64-compressed
DESCRIPTION="Presla (Presentation Lambda) is an application that runs on your computer. It creates a local webserver that is equipped with remarkjs, allowing you to create your own presentations in markdown."
DOWNLOADURL=https://github.com/3stadt/presla/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	mv $(FILENAME) presla
	chmod +x presla
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin presla
