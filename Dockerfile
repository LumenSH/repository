FROM debian:stretch

RUN apt-get update && \
	apt-get install -y gcc g++ make ruby ruby-dev apt-utils python-pip python-keystoneclient dpkg-sig && \
	gem install --no-ri --no-rdoc fpm && \
	pip install python-swiftclient

COPY ./docker.configs/gnugpg.conf /root/.gnupg/gpg.conf
COPY ./apt_private.gpg /

RUN gpg --allow-secret-key-import --import  /apt_private.gpg
