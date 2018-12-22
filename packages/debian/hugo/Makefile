include ../../../config.mk

NAME=hugo
VERSION=0.50
FILENAME=hugo_$(VERSION)_Linux-64bit.deb
DESCRIPTION="Let's Encrypt client and ACME library written in Go"
DOWNLOADURL=https://github.com/gohugoio/hugo/releases/download/v$(VERSION)/hugo_$(VERSION)_Linux-64bit.deb

.PHONY: package
package:
	wget $(DOWNLOADURL)
