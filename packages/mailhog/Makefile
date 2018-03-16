NAME=mailhog
ARCH=amd64
VERSION=1.0.0
FILENAME=lego_linux_amd64.tar.xz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Web and API based SMTP testing"
DOWNLOADURL=https://github.com/mailhog/MailHog/releases/download/v$(VERSION)/MailHog_linux_amd64

.PHONY: package
package:
	wget -q $(DOWNLOADURL)
	mv MailHog_linux_amd64 mailhog
	chmod +x mailhog
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --config-files /etc/systemd/system/mailhog.service ./mailhog=/usr/local/bin/mailhog ./mailhog.service=/etc/systemd/system/mailhog.service
