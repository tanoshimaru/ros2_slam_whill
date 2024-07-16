#!/bin/bash

if uname -r | grep tegra; then
    BUILD_JETSON="--build-arg TARGET=jetson"
fi

docker build --build-arg NUM_THREADS=8 ${BUILD_JETSON} --rm -t ros-humble-image .
