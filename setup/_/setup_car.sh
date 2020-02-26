#!/bin/bash


sudo apt-get update
apt-get install wget git -y
mkdir -p ~/racecar-ws/src
cd ~/racecar-ws && catkin_make

git clone https://github.com/RacecarJ/installRACECARJ.git && \
cd installRACECARJ/JetsonTX2 && \
./installZED-SDK-TX2.sh && ./installMITRACECARVESC6.sh && \
./installMITRACECARVESC6.sh |& tee softinstall.log && \

cd ~/ && git clone https://github.com/racecarj/installBLDCTool && \
cd installBLDC && \ ./installBLDCToolJetson.sh && \

sudo apt-get install joystick 
# sudo apt-get install ros-kinetic-rqt -y
# sudo apt-get install ros-kinetic-rqt-common-plugins -y
# sudo apt-get install ros-kinetic-rqt-robot-plugins -y

cd ~/racecar-ws && catkin_make


:'
Resources and References:
- https://www.jetsonhacks.com/racecar-j/
- https://hub.docker.com/r/ct2034/vnc-ros-kinetic-full
- 
'