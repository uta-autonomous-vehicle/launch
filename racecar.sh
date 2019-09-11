#!/bin/bash

source ~/racecar-ws/devel/setup.bash

roslaunch racecar teleop.launch & \
sleep 2 && roslaunch zed_wrapper zed.launch & \
sleep 2 && roslaunch urg_node urg_lidar.launch & \
sleep 2 && rqt & \
sleep 2 && rviz -d ~/Documents/racecar/rviz/zed.rviz & \
sleep 2 && rviz -d ~/Documents/racecar/rviz/lidar.rviz
