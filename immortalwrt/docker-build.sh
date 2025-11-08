#!/bin/bash

docker run --rm -it \
-v ./bin:/home/build/immortalwrt/bin \
-v ./files:/home/build/immortalwrt/files \
-v ./build.sh:/home/build/immortalwrt/build.sh \
immortalwrt/imagebuilder:layerscape-armv8_64b-openwrt-24.10 \
/home/build/immortalwrt/build.sh

