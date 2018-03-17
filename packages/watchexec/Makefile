NAME=watchexec
ARCH=amd64
VERSION=1.8.6
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Executes commands in response to file modifications"

.PHONY: package
package:
	wget https://github.com/mattgreen/watchexec/releases/download/$(VERSION)/watchexec-$(VERSION)-x86_64-unknown-linux-gnu.tar.gz
	tar xf watchexec-$(VERSION)-x86_64-unknown-linux-gnu.tar.gz
	mv watchexec-$(VERSION)-x86_64-unknown-linux-gnu/watchexec .
	chmod +x watchexec
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin watchexec
