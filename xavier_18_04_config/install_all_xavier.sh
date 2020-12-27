#!/bin/bash

# install jtop, which can monitor the status of CPU GPU temperature etc
sudo apt-get install python3-pip
sudo pip3 install jetson-stats
# usage: sudo jtop

# install miniconda
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
cd /home/$(whoami)/Downloads
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh  # This link might be updated based on your pc plafform
bash Miniforge3-Linux-aarch64.sh
source /home/$(whoami)/.bashrc

echo "#######################################################################################################################"
echo ""
echo ">>> {Starting ROS melodic installation}"
echo ""

sh ./install_ros_melodic_py3.sh

conda install -c conda-forge catkin_pkg
pip uninstall em
pip install empy

#sh ./install_mac_theme.sh

echo "#######################################################################################################################"
echo ""
echo ">>> {Starting basic useful tools installation}"
echo ""

echo "set completion-ignore-case on" >> ~/.inputrc
echo "\"\e[A\": history-search-backward" >> ~/.inputrc
echo "\"\e[B\": history-search-forward" >> ~/.inputrc

# install git, vim and ssh
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y openssh-server
# install other softwares
sudo apt-get install -y terminator
sudo apt-get install -y kazam
sudo apt-get install -y htop

"#######################################################################################################################"
echo ""
echo ">>> {Starting zed sdk installation}"
echo ""
sh ./install_zed2.sh

# install Jetpack sdk or upgrade sdk
# https://www.jianshu.com/p/c763c5384cd2
