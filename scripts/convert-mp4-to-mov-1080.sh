#!/bin/bash
for f in *.mp4; do
  ffmpeg -hwaccel cuda -hwaccel_output_format cuda \
    -i "$f" \
    -vf "scale_cuda=1920:1080,hwdownload,format=nv12" \
    -c:v hevc_nvenc -rc vbr -cq 20 -preset p6 \
    -c:a copy \
    "${f%.mp4}_1080p.mov"
done