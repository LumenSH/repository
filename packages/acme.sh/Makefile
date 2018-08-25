NAME="acme.sh"
ARCH=amd64
VERSION=2.7.9
FILENAME=acme.sh
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A pure Unix shell script implementing ACME client protocol"

DOWNLOADURL=https://raw.githubusercontent.com/Neilpang/acme.sh/$(VERSION)/acme.sh

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x acme.sh
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /usr/local/bin acme.sh
