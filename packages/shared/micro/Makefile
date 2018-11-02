NAME=micro
ARCH=amd64
VERSION=1.4.1
FILENAME=micro-$(VERSION)-linux64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A modern and intuitive terminal-based text editor https://micro-editor.github.io"
DOWNLOADURL=https://github.com/zyedidia/micro/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	tar xf $(FILENAME)
	mv micro-$(VERSION)/micro micro
	chmod +x micro
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin micro
