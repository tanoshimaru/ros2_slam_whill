ARG TARGET="general"

FROM ros:humble AS image_general
ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

# check your jetpack version with "cat /etc/nv_tegra_release" in Jetson terminal.
FROM dustynv/ros:humble-desktop-l4t-r35.3.1 AS image_jetson

FROM image_${TARGET}

# Install packages
RUN apt-get update \
    && apt-get upgrade -y\
    && apt-get install -y \
    wget \
    curl \
    nano \
    sudo \
    x11-apps \
    iproute2 \
    iputils-ping \
    usbutils \
    libpcl-dev \
    libyaml-cpp-dev \
    libpcap-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && apt-get upgrade -y
