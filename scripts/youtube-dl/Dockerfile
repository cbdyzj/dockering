#
# Dockerfile for youtube-dl
#

FROM alpine
MAINTAINER cbdyzj <cbdyzj@jianzhao.org>

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
                          python3 \
                          aria2 \
    && pip3 install youtube-dl

# Try to run it so we know it works
RUN youtube-dl --version

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
