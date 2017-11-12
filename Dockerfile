FROM debian:stretch

RUN apt-get update && \
	apt-get install -y gcc g++ make ruby ruby-dev apt-utils python-pip python-keystoneclient && \
	gem install --no-ri --no-rdoc fpm && \
	pip install python-swiftclient
