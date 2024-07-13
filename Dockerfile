# ベースイメージ
FROM arm64v8/ros:humble

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
    ros-humble-rviz2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# シェルをBashに変更
SHELL ["/bin/bash", "-c"]

# ROS2環境変数を設定
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

RUN apt-get update \
    && apt-get upgrade -y

# GUIアプリケーションを動作させるための設定
ENV DISPLAY=:0

# エントリーポイントの設定
CMD ["/bin/bash"]
