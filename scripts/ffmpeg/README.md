# ffmpeg

## Set alias

```sh
alias ffmpeg='docker run --rm -v "$PWD:/tmp/workdir" jrottenberg/ffmpeg:4.1 "$@"'
```

## avi2mp4

```sh
ffmpeg -i input.avi -vf scale=1280:-1 -c:v libx264 -preset veryslow -crf 24 output.mp4
```

## mp42gif

```sh
ffmpeg -i input.mp4 output.gif
```

## flv2mp4

```sh
ffmpeg -i input.flv -vcodec copy -acodec copy output.mp4
```

## extract audio

```sh
ffmpeg -i input.mp4 -vn -acodec copy output.m4a
```