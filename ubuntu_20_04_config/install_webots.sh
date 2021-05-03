#!/bin/bash

# install webots
wget -qO- https://cyberbotics.com/Cyberbotics.asc | sudo apt-key add -
sudo apt-add-repository 'deb https://cyberbotics.com/debian/ binary-amd64/'
sudo apt-get update
sudo apt-get install -y webots
echo "export WEBOTS_HOME=/usr/local/webots" >> /home/$(whoami)/.bashrc
echo "export LD_LIBRARY_PATH=\$WEBOTS_HOME/lib/controller:\$LD_LIBRARY_PATH" >> /home/$(whoami)/.bashrc
echo "export PYTHONPATH=\$WEBOTS_HOME/lib/controller/python38:\$PYTHONPATH" >> /home/$(whoami)/.bashrc

sudo apt-get install -y ros-noetic-webots-ros ros-noetic-geometry2 ros-noetic-tf2 ros-noetic-cv-bridge ros-noetic-navigation ros-noetic-pcl-ros

