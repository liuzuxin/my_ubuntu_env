#!/bin/bash

echo "#######################################################################################################################"
echo ""
echo ">>> {Starting basic useful tools installation}"
echo ""

sh ./install_tools.sh

echo "#######################################################################################################################"
echo ""
echo ">>> {Starting ROS melodic installation}"
echo ""

sh ./install_ros_melodic_py3.sh

echo "#######################################################################################################################"
echo ""
echo ">>> {Starting nvidia drivers and CUDA installation}"
echo ""

sh ./install_nvidia.sh

#sh ./install_webots.sh

#sh ./install_mac_theme.sh

sudo reboot


# mac themes: https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux  
#https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux
