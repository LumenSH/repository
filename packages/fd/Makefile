NAME=fd
ARCH=amd64
VERSION=5.0.0
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="A simple, fast and user-friendly alternative to find."

.PHONY: package
package:
	wget https://shyim.de/data/fd
	chmod +x fd
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin fd
	mv *.deb ../../repository/pool/stable/binary-amd64/
