FROM alpine:3.6

# ensure latest packages are part of the image
RUN apk upgrade --no-cache

COPY ./scripts/apk-install /usr/sbin/apk-install

# Base packages useful for other containers
RUN apk-install ca-certificates curl wget

CMD ["/bin/sh"]
