# set RACECAR_IP in your terminal as "export RACECAR_IP=192.168.43.16"
# make sure the IP Address is reachable using ping

rsync -avx nvidia@$RACECAR_IP:~/racecar/launch/* .
