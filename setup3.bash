#!/bin/bash

# rviz2のインストール
mkdir -p /workspace/rviz2_ws/src && cd $_
# git clone https://github.com/ros2/rviz.git -b humble
unzip /workspace/rviz-humble.zip
mv /workspacerviz-humble .
cd /workspace/rviz2_ws
rosdep install -i --from-path . --rosdistro humble -y
colcon build --merge-install