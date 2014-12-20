FROM       ubuntu-debootstrap:14.04
MAINTAINER Luis Lavena <luislavena@gmail.com>

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
    curl \
    tar \
    xz-utils \
    && \
  apt-get clean autoclean && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD ./mkimage.sh /mkimage.sh

ENTRYPOINT ["/mkimage.sh"]
CMD ["-h"]
