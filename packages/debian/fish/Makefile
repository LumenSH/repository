VERSION="2.7.1-1"
FISH_COMMON_LINK="http://ftp.halifax.rwth-aachen.de/opensuse/repositories/shells:/fish:/release:/2/Debian_9.0/all/fish-common_$(VERSION)_all.deb"
FISH_LINK="http://ftp.gwdg.de/pub/opensuse/repositories/shells:/fish:/release:/2/Debian_9.0/amd64/fish_$(VERSION)_amd64.deb"

.PHONY: package
package:
	wget $(FISH_COMMON_LINK)
	wget $(FISH_LINK)
