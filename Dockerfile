FROM       uggedal/alpine
MAINTAINER Luis Lavena <luislavena@gmail.com>

ADD ./scripts/apk-install /usr/sbin/apk-install
RUN apk update && apk upgrade

# Base packages useful for other containers
RUN apk-install ca-certificates curl wget

CMD ["/bin/sh"]
