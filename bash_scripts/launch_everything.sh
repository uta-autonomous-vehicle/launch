#!/bin/bash

if [ $1 == "1" ]; then
  . racecar.sh \
  & . uta_racecar.sh
fi

if [ $1 == "2" ]; then
  . racecar.sh
fi

if [ $1 == "3" ]; then
  . uta_racecar.sh
fi

if [ $1 = "4" ]; then
  . racecar.sh \
  & . uta_racecar.sh \
  & roslaunch --wait --screen -v usb_cam usb_cam-test.launch \
  & roslaunch rosbridge_server rosbridge_websocket.launch
  # & . uta-racecar --wait --screen -v remote_view.launch \
fi
