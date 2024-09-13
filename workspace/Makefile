setup:
	cd /workspace
	bash 1_velodyne.bash
	bash 2_libusb.bash
	bash 3_pcl.bash
	bash 4_g2o.bash
	bash 5_slam.bash

velodyne:
	source /workspace/velodyne_ws/install/setup.bash
	ros2 run velodyne_driver velodyne_driver_node --ros-args -p device_ip:="192.168.1.201" -p model:="VLP16"

pcl:
	source /workspace/velodyne_ws/install/setup.bash
	ros2 launch velodyne_pointcloud velodyne_transform_node-VLP16-launch.py

lidarslam_ros2:
	source /workspace/slam_ws/install/setup.bash
	ros2 launch lidarslam lidarslam.launch.py
