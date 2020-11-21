# ffmpeg

## Set alias

```sh
alias ffmpeg='docker run --rm -v "$PWD:/tmp/workdir" jrottenberg/ffmpeg:4.1 "$@"'
```

## avi2mp4

```sh
ffmpeg -i /opt/videos/input-video.avi -vf scale=1280:-1 -c:v libx264 -preset veryslow -crf 24 /opt/videos/output-video.mp4
```

## mp42gif

```sh
export VIDEO_NAME='video_name'
ffmpeg -i "/opt/videos/${VIDEO_NAME}.mp4" "/opt/videos/${VIDEO_NAME}.gif"
```

## flv2mp4

```sh
export VIDEO_NAME='video_name'
ffmpeg -i "/opt/videos/${VIDEO_NAME}.flv" "/opt/videos/${VIDEO_NAME}.mp4"
```

## extract audio

```sh
ffmpeg -i input-video.mp4 -vn -acodec copy output-audio.m4a
```