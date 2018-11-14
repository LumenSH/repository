NAME=java8
ARCH=amd64
VERSION=8u191
FOLDERNAME="jdk1.8.0_191"
FILENAME=jdk-$(VERSION)-linux-x64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 8"
DOWNLOADURL="http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz"

.PHONY: package
package:
	wget --header "Cookie: oraclelicense=accept-securebackup-cookie" -O $(FILENAME) $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "$(FOLDERNAME)"
