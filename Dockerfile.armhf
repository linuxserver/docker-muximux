FROM lsiobase/nginx:arm32v7-3.9

# set version label
ARG BUILD_DATE
ARG VERSION
ARG MUXIMUX_COMMIT
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="sparklyballs"

RUN \
 echo "**** install runtime packages ****" && \
 apk add --no-cache \
	curl \
	jq && \
 echo "**** Tag this image with current version ****" && \
 if [ -z ${MUXIMUX_COMMIT+x} ]; then \
        MUXIMUX_COMMIT=$(curl -sX GET https://api.github.com/repos/mescon/Muximux/commits/master \
        | jq -r '. | .sha'); \
 fi && \
 echo ${MUXIMUX_COMMIT} > /version.txt

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
