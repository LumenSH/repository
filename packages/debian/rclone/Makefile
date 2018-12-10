NAME="rclone"
ARCH=amd64
VERSION=1.45
FILENAME=rclone-v$(VERSION)-linux-amd64.deb
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Share your terminal as a web application"
DOWNLOADURL=https://github.com/ncw/rclone/releases/download/v$(VERSION)/$(FILENAME)

.PHONY: package
package:
	wget $(DOWNLOADURL)
