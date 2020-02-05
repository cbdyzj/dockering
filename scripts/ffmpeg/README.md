# ffmpeg

```
docker run --rm -v `pwd`/videos:/opt/videos jrottenberg/ffmpeg -i /opt/videos/input.avi -vf scale=1280:-1 -c:v libx264 -preset veryslow -crf 24 /opt/videos/output.mp4
```
