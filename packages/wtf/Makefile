NAME=wtf
ARCH=amd64
VERSION=0.0.3
FILENAME=restic_$(VERSION)_linux_amd64.bz2
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A personal information dashboard for your terminal"
DOWNLOADURL=https://github.com/senorprogrammer/wtf/releases/download/v$(VERSION)/wtf_$(VERSION)_linux_amd64.tar.gz

.PHONY: package
package:
	wget -O wtf.tar.gz $(DOWNLOADURL)
	tar xfv wtf.tar.gz
	chmod +x wtf
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./wtf=/usr/local/bin/
