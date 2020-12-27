#!/bin/bash

# Must install ROS and create catkin_ws first before run this script.

cd ~/Downloads

wget -O zed_sdk_v3.run https://download.stereolabs.com/zedsdk/3.3/jp44/jetsons

chmod +x zed_sdk_v3.run

./zed_sdk_v3.run 

# then install the ros wrapper

cd ~/catkin_ws/src
git clone https://github.com/stereolabs/zed-ros-wrapper.git
git clone https://github.com/stereolabs/zed-ros-examples.git
cd ../
rosdep install --from-paths src --ignore-src -r -y
catkin_make -DCMAKE_BUILD_TYPE=Release
source ./devel/setup.bash

# test (either command should work)
## roslaunch zed_wrapper zed2.launch
# roslaunch zed_display_rviz display_zed.launch
