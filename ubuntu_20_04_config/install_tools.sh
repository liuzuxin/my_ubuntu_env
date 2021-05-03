#!/bin/bash

# install git, vim and ssh
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y openssh-server
# install other softwares
sudo apt-get install -y terminator
sudo apt-get install -y kazam
sudo apt-get install -y htop
# install anaconda
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
cd /home/$(whoami)/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh  # This link might be updated based on your pc plafform
bash Anaconda3-2020.11-Linux-x86_64.sh
source /home/$(whoami)/.bashrc

echo "set completion-ignore-case on" >> ~/.inputrc
echo "\"\e[A\": history-search-backward" >> ~/.inputrc
echo "\"\e[B\": history-search-forward" >> ~/.inputrc

# set ssh keys tutorial
# https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2
