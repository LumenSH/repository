VERSION="3.1.2-1"
FISH_COMMON_LINK="https://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/all/fish-common_$(VERSION)_all.deb"
FISH_LINK="https://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/amd64/fish_$(VERSION)_amd64.deb"

.PHONY: package
package:
	wget $(FISH_COMMON_LINK)
	wget $(FISH_LINK)
