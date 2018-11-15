NAME=httpstat
ARCH=amd64
VERSION=1.0.0
FILENAME=httpstat-linux-amd64-v$(VERSION)
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="It's like curl -v, with colours."
DOWNLOADURL=https://github.com/davecheney/httpstat/releases/download/v1.0.0/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
	mv $(FILENAME) httpstat
	chmod +x httpstat
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) -d python3 --prefix /usr/local/bin httpstat
