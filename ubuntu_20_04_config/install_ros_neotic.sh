#!/bin/bash

# This script comes from https://github.com/qboticslabs/ros_install_noetic

wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_install_noetic.sh && chmod +x ./ros_install_noetic.sh && ./ros_install_noetic.sh
echo "alias cw=\"cd ~/catkin_ws\"" >> ~/.bashrc
echo "alias cs=\"cd ~/catkin_ws/src\"" >> ~/.bashrc
echo "alias cm=\"cd ~/catkin_ws;catkin_make;cd -\"" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://localhost:11311" >> ~/.bashrc
echo "export ROS_HOSTNAME=localhost" >> ~/.bashrc
echo "export ROS_IP=localhost" >> ~/.bashrc

# Single line ROS Noetic Uninstall
# wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_uninstall_noetic.sh && chmod +x ./ros_uninstall_noetic.sh && ./ros_uninstall_noetic.sh

pip install empy
pip install catkin-pkg rospkg
