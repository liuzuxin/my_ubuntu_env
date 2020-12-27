#!/bin/bash

# This script comes from https://github.com/JungWKim/Install_ROS_Melodic/blob/master/install_melodic_python3.sh

cd
sudo apt-get install -y python3-catkin-pkg
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install -y ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "alias cw=\"cd ~/catkin_ws\"" >> ~/.bashrc
echo "alias cs=\"cd ~/catkin_ws/src\"" >> ~/.bashrc
echo "alias cm=\"cd ~/catkin_ws;catkin_make;cd -\"" >> ~/.bashrc
echo "alias catkin_make=\"catkin_make -DPYTHON_EXECUTABLE=/home/$(whoami)/miniforge3/bin/python\"" >> ~/.bashrc
source ~/.bashrc
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install -y python-rosdep
sudo rosdep init
rosdep update
mkdir -p ~/catkin_ws/src
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
cd ~/catkin_ws
catkin_make
echo "export ROS_MASTER_URI=http://localhost:11311" >> ~/.bashrc
echo "export ROS_HOSTNAME=localhost" >> ~/.bashrc
echo "export ROS_IP=localhost" >> ~/.bashrc
source ~/.bashrc

# trouble shooting:
# pip install empy pyyaml rospkg catkin_pkg
