alias ffmpeg='docker run --rm -v "$PWD:/tmp/workdir" jrottenberg/ffmpeg:4.1'
ffmpeg -i "$1" -vn -acodec copy "$1".m4a
