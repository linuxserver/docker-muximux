FROM linuxserver/baseimage.apache

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

ENV APTLIST="git-core"

# install packages
RUN apt-get update -q && \
apt-get install $APTLIST -qy && \

# cleanup
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

# ports and volumes
EXPOSE 80
VOLUME /config
