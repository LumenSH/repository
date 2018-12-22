include ../../../config.mk

NAME=grpcurl
VERSION=1.0.0
FILENAME=grpcurl_$(VERSION)_linux_x86_64.tar.gz
DESCRIPTION="Like cURL, but for gRPC: Command-line tool for interacting with gRPC servers"
DOWNLOADURL=https://github.com/fullstorydev/grpcurl/releases/download/v$(VERSION)/grpcurl_$(VERSION)_linux_x86_64.tar.gz

.PHONY: package
package:
	wget $(DOWNLOADURL)
	wget -O checksums.txt https://github.com/fullstorydev/grpcurl/releases/download/v$(VERSION)/grpcurl_$(VERSION)_checksums.txt
	sha256sum -c checksums.txt --ignore-missing
	tar xf $(FILENAME)
	chmod +x grpcurl
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin grpcurl
