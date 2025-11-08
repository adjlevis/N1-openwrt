#!/bin/bash
set -e

# 放宽权限，避免 Permission denied
chmod -R 777 "$(pwd)"

docker run --rm \
  -v "$(pwd):/home/build/immortalwrt" \
  --user root \
  immortalwrt/imagebuilder:layerscape-armv8_64b-openwrt-24.10 \
  /home/build/immortalwrt/build.sh




