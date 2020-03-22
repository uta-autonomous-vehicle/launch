#!/bin/bash

# trap "kill 0" SIGINT

# workon racecar
source ~/racecar-ws/devel/setup.bash

# echo "" > kill.txt

sudo mount /dev/sda1 /media/nvidia

roslaunch racecar teleop.launch \
& sleep 5 && roslaunch --wait zed_wrapper zed.launch \
# & sudo xboxdrv -s --quiet --priority normal \ # run this on a seperate terminal. running this beside the roslaunch freezes the system
# & sleep 10 && roslaunch --wait --screen -v uta-racecar racecar_launch.launch \
# & sleep 10 && roslaunch --wait urg_node urg_lidar.launch & \

# visualize data
# sleep 15 && rqt & \
# sleep 20 && rviz -d rviz/zed.rviz & \
# sleep 25 && rviz -d rviz/lidar.rviz
