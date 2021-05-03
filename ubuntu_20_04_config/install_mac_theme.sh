#!/bin/bash

# For Ubuntu 20.04, please refer to the links below:
# mac themes: https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux  
#https://linuxconfig.org/how-to-install-macos-theme-on-ubuntu-20-04-focal-fossa-linux

# install gnome tweak and other necessary prerequisites
sudo add-apt-repository universe
sudo apt-get update
sudo apt install gnome-tweak-tool

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf

mkdir ~/.themes
tar xf Mojave-dark.tar.xz
cp -r ./theme/Mojave-dark ~/.themes/

mkdir ~/.icons
tar xf Mojave-CT-Classic.tar.xz
cp -r ./theme/Mojave-CT-Classic ~/.icons/

unzip -qq macOS\ Cursor\ Set.zip
mv macOS\ Cursor\ Set ~/.icons/

echo ""
echo ">>> {Use the gnome tweak tool to change to the MAC theme!}"
echo ""



