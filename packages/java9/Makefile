NAME=java9
ARCH=amd64
VERSION=9.0.4
FILENAME=jdk-9.0.4_linux-x64_bin.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 9"
DOWNLOADURL=http://download.oracle.com/otn-pub/java/jdk/9.0.4+11/c2514751926b4512b076cc82f959763f/jdk-9.0.4_linux-x64_bin.tar.gz

.PHONY: package
package:
	wget --header "Cookie: oraclelicense=accept-securebackup-cookie" -O $(FILENAME) $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "jdk-9.0.4"
