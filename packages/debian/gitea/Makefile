include ../../../config.mk

NAME=gitea
VERSION=1.12.2
FILENAME=gitea-$(VERSION)-linux-amd64
DESCRIPTION="Git with a cup of tea, painless self-hosted git service"

DOWNLOADURL=https://github.com/go-gitea/gitea/releases/download/v$(VERSION)/$(FILENAME)
CONFIGURL=https://raw.githubusercontent.com/go-gitea/gitea/v$(VERSION)/custom/conf/app.ini.sample
SYSTEMDFILE=https://raw.githubusercontent.com/go-gitea/gitea/v$(VERSION)/contrib/systemd/gitea.service

.PHONY: package
package:
	wget $(DOWNLOADURL)
	mv $(FILENAME) gitea
	wget -O app.ini $(CONFIGURL)
	wget $(SYSTEMDFILE)
	chmod +x gitea
	sed -i '/Restart=always/ a ProtectHome=no' gitea.service
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t ${TARGET} -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) --deb-systemd gitea.service \
		--pre-install pre-install \
		--before-remove before-remove \
		--post-install post-install \
		--config-files app.ini \
		./gitea=/usr/local/bin/ \
		./app.ini=/etc/gitea/
