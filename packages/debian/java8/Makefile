NAME=java8
ARCH=amd64
VERSION=8u162
FOLDERNAME="jdk1.8.0_162"
FILENAME=jdk-$(VERSION)-linux-x64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 8"
DOWNLOADURL="http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.tar.gz"

.PHONY: package
package:
	wget --header "Cookie: oraclelicense=accept-securebackup-cookie" -O $(FILENAME) $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "$(FOLDERNAME)"
