#!/bin/bash

# This script only works for Ubuntu 18.04, for Ubuntu 20.04, please refer to the links below:
# mac themes: https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux  
#https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux

# install gnome tweak and other necessary prerequisites
sudo add-apt-repository universe
sudo apt-get update
sudo apt install gnome-tweaks

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf

mkdir ~/.themes
cp -r ./theme/Mojave-dark ~/.themes/

mkdir ~/.icons
cp -r ./theme/Mojave-CT-Classic ~/.icons/

cp -r ./theme/MAC-cursor ~/.icons/

echo ""
echo ">>> {Use the gnome tweak tool to change to the MAC theme!}"
echo ""



