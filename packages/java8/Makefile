NAME=java8
ARCH=amd64
VERSION=8u152
FILENAME=jdk-8u152-linux-x64.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 8"
DOWNLOADURL=http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz

.PHONY: package
package:
	wget -q --header "Cookie: oraclelicense=accept-securebackup-cookie" $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "jdk1.8.0_152"
	mv *.deb ../../repository/pool/stable/binary-amd64/
