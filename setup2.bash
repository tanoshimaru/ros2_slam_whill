#!/bin/bash

# VLP-16のドライバをインストール
mkdir -p /workspace/velodyne_ws/src && cd $_
git clone https://github.com/ros-drivers/velodyne.git -b ros2
git clone https://github.com/ros/angles.git -b ros2
git clone https://github.com/ros/diagnostics.git -b ros2
cd /workspace/velodyne_ws
colcon build --symlink-install
echo "source /workspace/velodyne_ws/install/setup.bash" >> ~/.bashrc
whill@whill:~/workspace $ cat setup2.bash
#!/bin/bash

# lidarslam_ros2のインストール
source ~/.bashrc
mkdir -p /workspace/slam_ws/src && cd $_
git clone --recursive https://github.com/rsasaki0109/lidarslam_ros2
cd /workspace/slam_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
echo "source /workspace/slam_ws/install/setup.bash" >> ~/.bashrc
