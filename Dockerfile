# ベースイメージ
FROM dustynv/ros:humble-desktop-l4t-r35.3.1

# 必要なツールをインストール
RUN apt-get update \
    && apt-get upgrade -y\
    && apt-get install -y \
    wget \
    curl \
    vim \
    nano \
    htop \
    sudo \
    x11-apps \
    iproute2 \
    iputils-ping \
    usbutils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    libpcl-dev \
    libyaml-cpp-dev \
    libpcap-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get purge -y '*opencv*' \
    && apt-get update \
    && apt-get upgrade -y

RUN apt-get install -y libopencv

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ROS2環境変数を設定
RUN echo "source /opt/ros/humble/install/setup.bash" >> ~/.bashrc

# GUIアプリケーションを動作させるための設定
ENV DISPLAY=:0

# エントリーポイントの設定
CMD ["/bin/bash"]
