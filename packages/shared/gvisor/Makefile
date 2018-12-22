include ../../../config.mk

NAME=gvisor
VERSION=1.0.0
DESCRIPTION="Container Runtime Sandbox"
DOWNLOADURL=https://storage.googleapis.com/gvisor/releases/nightly/latest/runsc

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x runsc
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin runsc
