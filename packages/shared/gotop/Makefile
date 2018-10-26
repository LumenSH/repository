NAME=gotop
ARCH=amd64
VERSION=1.2.14
FILENAME=gotop_$(VERSION)_linux_amd64.tgz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A terminal based graphical activity monitor inspired by gtop and vtop"
DOWNLOADURL=https://github.com/cjbassi/gotop/releases/download/$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	chmod +x gotop
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin gotop
