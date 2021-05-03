#!/bin/bash

# Must install ROS and create catkin_ws first before run this script.

cd ~/Downloads

wget -O zed_sdk_v3.run https://download.stereolabs.com/zedsdk/3.3/cu110/ubuntu18

chmod +x zed_sdk_v3.run

./zed_sdk_v3.run 

# then install the ros wrapper
