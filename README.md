# ros2_slam_whill

## Overview
後ほど追加


## Install
1. `docker compose up -d`
2. `docker compose ros2 bash`
3. `cd /workspace`
4. `bash 1_velodyne.bash`
5. `bash 2_libusb.bash`
6. `bash 3_pcl.bash`
7. `bash 4_g2o.bash`
8. `bash 5_slam.bash`

## Run
1. `xhost +local:`
2. `docker compose up -d`
3. `docker compose ros2 bash`

### Terminal 1
Velodyneドライバの実行
```bash
source /workspace/velodyne_ws/install/setup.bash
ros2 run velodyne_driver velodyne_driver_node --ros-args -p device_ip:="192.168.1.201" -p model:="VLP16"
```

### Terminal 2
lidarslam_ros2の実行
```bash
source /workspace/slam_ws/install/setup.bash
ros2 launch velodyne_pointcloud velodyne_transform_node-VLP16-launch.py
```

### Terminal 3
rviz2でmapの確認
```bash
rviz2 -d mapping.rviz
```

### Terminal 3
PCDファイルの保存
```bash
ros2 service call /map_save std_srvs/Empty
```

## Troubleshooting
後ほど追加
