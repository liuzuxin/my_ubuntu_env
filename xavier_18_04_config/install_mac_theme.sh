#!/bin/bash

# This script only works for Ubuntu 18.04, for Ubuntu 20.04, please refer to the links below:
# mac themes: https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux  
#https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux

# installation script for Ubuntu 18.04
#http://ubuntuhandbook.org/index.php/2020/01/install-mac-os-mojave-theme-ubuntu-19-10/

# install gnome tweak and other necessary prerequisites
sudo add-apt-repository universe
sudo apt-get update
sudo apt install gnome-tweaks

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf

#mkdir ~/.themes
#cp -r ./theme/Mojave-dark ~/.themes/

#mkdir ~/.icons
#cp -r ./theme/Mojave-CT-Classic ~/.icons/

#cp -r ./theme/MAC-cursor ~/.icons/
cd ~/Downloads
wget https://github.com/vinceliuice/Mojave-gtk-theme/archive/2019-01-02.zip
wget https://github.com/vinceliuice/McMojave-circle/archive/2019_07_12.zip
unzip 2019-01-02.zip 
unzip 2019_07_12.zip
cd McMojave-circle-2019_07_12/
./install.sh 
cd Mojave-gtk-theme-2019-01-02
./install.sh 

echo ""
echo ">>> {Use the gnome tweak tool to change to the MAC theme!}"
echo ""



