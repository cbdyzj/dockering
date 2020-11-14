#
# Dockerfile for youtube-dl
#

FROM alpine:3.12.1

MAINTAINER cbdyzj <cbdyzj@jianzhao.org>

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
                          py3-pip \
                          aria2 \
    && pip install youtube-dl

# Try to run it so we know it works
RUN youtube-dl --version

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
