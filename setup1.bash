#!/bin/bash

# VLP-16のドライバをインストール
mkdir -p /workspace/velodyne_ws/src && cd $_
git clone https://github.com/ros-drivers/velodyne.git -b ros2
git clone https://github.com/ros/angles.git -b ros2
git clone https://github.com/ros/diagnostics.git -b ros2
cd /workspace/velodyne_ws
colcon build --symlink-install \
&& echo "source /workspace/velodyne_ws/install/setup.bash" >> ~/.bashrc
