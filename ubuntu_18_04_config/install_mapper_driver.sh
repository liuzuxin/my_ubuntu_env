#!/bin/bash

# Must install ROS and create catkin_ws first before run this script.

cd ~/catkin_ws/src

wget -O slamware.tar.gz https://download.slamtec.com/api/download/slamware-ros-sdk/2.8.1_rtm?lang=netural

mv ./slamware_ros_sdk_linux-x86_64-gcc5.4/src/* ./

rm -rf slamware.tar.gz slamware_ros_sdk_linux-x86_64-gcc5.4

cd ..

conda install -c conda-forge catkin_pkg
pip uninstall em
pip install empy

catkin_make

