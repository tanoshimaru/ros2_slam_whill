# ベースイメージ
FROM dustynv/ros:humble-desktop-l4t-r35.3.1

# 必要なツールをインストール
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

# シェルをBashに変更
SHELL ["/bin/bash", "-c"]

RUN apt-get update \
    && apt-get upgrade -y

# GUIアプリケーションを動作させるための設定
ENV DISPLAY=:0

# エントリーポイントの設定
CMD ["/bin/bash"]
