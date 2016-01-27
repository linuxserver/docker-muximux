FROM linuxserver/baseimage

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

ENV APTLIST="nodejs git-core"

# install packages
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
apt-get install $APTLIST -qy && \
npm install -g npm@latest && \
git clone https://github.com/onedr0p/manage-this-node /app/muximux && \
cd /app/muximux && \
npm install && \

# cleanup
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

VOLUME /config
