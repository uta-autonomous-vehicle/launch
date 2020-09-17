#!/bin/bash


# launches uta-racecar
roslaunch --screen -v --wait uta_racecar racecar_launch.launch \
& sleep 5 && roslaunch --screen -v --wait safety_node safety_node.launch
# & roslaunch --screen -v --wait uta_racecar process_usb_image.launch 