include ../../../config.mk

NAME=mailhog
VERSION=1.0.0
FILENAME=lego_linux_amd64.tar.xz
DESCRIPTION="Web and API based SMTP testing"
DOWNLOADURL=https://github.com/mailhog/MailHog/releases/download/v$(VERSION)/MailHog_linux_amd64

.PHONY: package
package:
	wget $(DOWNLOADURL)
	mv MailHog_linux_amd64 mailhog
	chmod +x mailhog
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --config-files /etc/systemd/system/mailhog.service ./mailhog=/usr/local/bin/mailhog ./mailhog.service=/etc/systemd/system/mailhog.service
