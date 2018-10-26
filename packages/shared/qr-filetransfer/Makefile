NAME=qr-filetransfer
ARCH=amd64
VERSION=0.1.0
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Transfer files over wifi from your computer to your mobile device by scanning a QR code without leaving the terminal."

.PHONY: package
package:
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --prefix /usr/local/bin qr-filetransfer
