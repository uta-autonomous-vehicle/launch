#!/bin/bash

# trap "kill 0" SIGINT

# workon racecar
source ~/racecar-ws/devel/setup.bash

. mount.sh
roslaunch racecar teleop.launch \
& sleep 5 && roslaunch --wait zed_wrapper zed.launch 
# & sleep 15 && rqt \
# & sleep 20 && rviz -d ../rviz/zed.rviz \
# & sleep 25 && rviz -d ../rviz/lidar.rviz
# & sleep 10 && roslaunch --wait --screen -v urg_node urg_lidar.launch \
# & sleep 5 && roslaunch --wait --screen -v usb_cam usb_cam-test.launch \
# & sleep 10 && roslaunch --wait --screen -v rosbridge_server rosbridge_websocket.launch


# & sudo xboxdrv -s --quiet --priority normal \ # run this on a seperate terminal. running this beside the roslaunch freezes the system
# & sleep 10 && roslaunch --wait --screen -v uta-racecar racecar_launch.launch \

# visualize data
