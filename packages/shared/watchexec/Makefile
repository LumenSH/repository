include ../../../config.mk

NAME=watchexec
VERSION=1.14.0
DESCRIPTION="Executes commands in response to file modifications"

.PHONY: package
package:
	wget https://github.com/mattgreen/watchexec/releases/download/$(VERSION)/watchexec-$(VERSION)-x86_64-unknown-linux-gnu.tar.xz
	tar xf watchexec-$(VERSION)-x86_64-unknown-linux-gnu.tar.xz
	mv watchexec-$(VERSION)-x86_64-unknown-linux-gnu/watchexec .
	chmod +x watchexec
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin watchexec
