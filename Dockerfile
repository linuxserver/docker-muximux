FROM linuxserver/baseimage.apache

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

ENV APTLIST="git-core"

# install packages
RUN apt-get update && \
apt-get install $APTLIST -qy && \

# cleanup
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

#Adding Custom files
ADD defaults/ /defaults/
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/service/*/run && chmod -v +x /etc/my_init.d/*.sh

# ports and volumes
EXPOSE 80 443
VOLUME /config
