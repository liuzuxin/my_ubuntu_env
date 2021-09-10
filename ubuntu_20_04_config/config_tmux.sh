#!/bin/bash

# install tmux
sudo apt-get update
sudo apt-get install -y tmux
sudo apt-get install -y fonts-powerline

cd /home/$(whoami)
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# copy the customized config
cd - && cp ./config/tmux.conf.local ~/.tmux.conf.local


