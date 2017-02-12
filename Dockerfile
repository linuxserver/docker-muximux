FROM lsiobase/alpine.nginx:3.5
MAINTAINER Sparklyballs

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
