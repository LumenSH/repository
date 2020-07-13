include ../../../config.mk

NAME="kubectl"
VERSION=1.18.5
DESCRIPTION="The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters"
DOWNLOADURL=https://storage.googleapis.com/kubernetes-release/release/v1.18.5/bin/linux/amd64/kubectl

.PHONY: package
package:
	wget $(DOWNLOADURL)
	chmod +x kubectl
	fpm -s dir -m $(MAINTAINER) -a $(ARCH) -t deb -n $(NAME) -v $(VERSION) --description $(DESCRIPTION) \
		./kubectl=/usr/local/bin/ \
