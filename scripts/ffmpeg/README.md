# ffmpeg

# avi2mp4

```sh
docker run --rm -v `pwd`/videos:/opt/videos jrottenberg/ffmpeg -i /opt/videos/input.avi -vf scale=1280:-1 -c:v libx264 -preset veryslow -crf 24 /opt/videos/output.mp4
```

# mp42gif

```sh
export VIDEO_NAME='video_name'
docker run --rm -v `pwd`/videos:/opt/videos jrottenberg/ffmpeg:4.1-alpine -i "/opt/videos/${VIDEO_NAME}.mp4" "/opt/videos/${VIDEO_NAME}.gif"
```

# flv2mp4

```sh
export VIDEO_NAME='video_name'
docker run --rm -v `pwd`/videos:/opt/videos jrottenberg/ffmpeg:4.1-alpine -i "/opt/videos/${VIDEO_NAME}.flv" "/opt/videos/${VIDEO_NAME}.mp4"
```

# extract audio

```sh
ffmpeg -i input-video.mp4 -vn -acodec copy output-audio.m4a
```