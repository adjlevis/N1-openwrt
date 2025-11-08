#!/bin/bash
set -e

# 放宽权限
chmod -R 777 "$(pwd)"

docker run --rm \
  -v "$(pwd)/build.sh:/home/build/build.sh" \
  -v "$(pwd)/files:/home/build/files" \
  -v "$(pwd)/bin:/home/build/bin" \
  --workdir /home/build \
  --user root \
  immortalwrt/imagebuilder:layerscape-armv8_64b-openwrt-24.10 \
  bash build.sh
