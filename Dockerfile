FROM lsiobase/alpine.nginx
MAINTAINER Sparklyballs

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
