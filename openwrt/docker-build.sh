#!/bin/bash
set -euxo pipefail

WORKDIR=$(pwd)

docker run --rm \
  --user root \
  -v "$WORKDIR/bin:/home/build/immortalwrt/bin" \
  -v "$WORKDIR/files:/home/build/immortalwrt/files" \
  -v "$WORKDIR/build.sh:/home/build/immortalwrt/build.sh" \
openwrt/imagebuilder:layerscape-armv8_64b-master \
  /home/build/immortalwrt/build.sh





