#!/bin/bash

# lidarslam_ros2のインストール
source ~/.bashrc
mkdir -p /workspace/slam_ws/src && cd $_
git clone --recursive https://github.com/rsasaki0109/lidarslam_ros2
cd /workspace/slam_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
if [ $? -ne 0 ]; then
    echo "Build error!"
    exit 1
fi
echo "source /workspace/slam_ws/install/setup.bash" >> ~/.bashrc
