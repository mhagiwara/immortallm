#!/bin/bash

# convert the first argument (m4a file) to the second argument (mp3 file)
ffmpeg -i "$1" \
    -af "volume=16dB,acompressor=threshold=-18dB:ratio=8:attack=20:release=250" \
    -b:a 128k \
    "$2"
