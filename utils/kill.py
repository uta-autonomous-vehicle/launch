import rospy
import os
import subprocess, signal

if __name__ == "__main__":
    rospy.signal_shutdown("force")

    for i in open("kill.txt").read().split("\n"):
        if i:
            print "kill -9 {}".format(i)
            try:
                os.kill(int(i), signal.SIGINT)
            except:
                print "{} doesnt exist".format(i)