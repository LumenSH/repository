NAME=java10
ARCH=amd64
VERSION=10.0.1
FILENAME=jdk-10.0.1_linux-x64_bin.tar.gz
MAINTAINER="<admin@lumen.sh>"
DESCRIPTION="Java 10"
DOWNLOADURL=http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.tar.gz

.PHONY: package
package:
	wget --header "Cookie: oraclelicense=accept-securebackup-cookie" -O $(FILENAME) $(DOWNLOADURL)
	tar xf $(FILENAME)
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --post-install post-install --before-remove pre-remove --description $(DESCRIPTION) --prefix /opt "jdk-10.0.1"
