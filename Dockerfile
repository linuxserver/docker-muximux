FROM linuxserver/baseimage

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

ENV APTLIST="git-core nodejs"

# install packages
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash - && \
apt-get install $APTLIST -qy && \
npm install -g npm@latest && \

# install package
git clone https://github.com/onedr0p/manage-this-node /app/muximux && \
cd /app/muximux && \
npm install && \

# cleanup
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

#Adding Custom files
ADD init/ /etc/my_init.d/
# ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run && chmod -v +x /etc/my_init.d/*.sh

# ports and volumes
EXPOSE 3000
VOLUME /config
