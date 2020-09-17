#!/bin/bash

rosbag record -O ${1} -a
&& rosnode kill -a

roscore
& rosparam set use_sim_time true
& rosrun gmapping slam_gmapping scan:=scan _odom_frame:=zed/odom
& rosrun tf static_transform_publisher 0.0 0.0 0.0 0.0 0.0 0.0 map odom 100
& rosbag play ${1}.bag --clock && rosrun map_server map_saver -f ${2}