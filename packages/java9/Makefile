NAME=java9
ARCH=amd64
VERSION=9.0.1
FILENAME=jdk-9.0.1_linux-x64_bin.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 9"
DOWNLOADURL=http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jdk-9.0.1_linux-x64_bin.tar.gz

.PHONY: package
package:
	wget -q --header "Cookie: oraclelicense=accept-securebackup-cookie" $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "jdk-9.0.1"
	mv *.deb ../../repository/pool/stable/binary-amd64/
