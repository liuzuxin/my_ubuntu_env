# setup some command and tmux
echo "set completion-ignore-case on" >> ~/.inputrc
echo "\"\e[A\": history-search-backward" >> ~/.inputrc
echo "\"\e[B\": history-search-forward" >> ~/.inputrc
mkdir Downloads
cd Downloads
git clone https://github.com/liuzuxin/my_ubuntu_env.git
cd my_ubuntu_env
cd ubuntu_20_04_config && sh config_tmux.sh

cd /home/$(whoami)/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh  # This link might be updated based on your pc plafform
bash Anaconda3-2022.10-Linux-x86_64.sh

source /home/$(whoami)/.bashrc

# then generate ssh key and add to github
sudo apt-get install ssh
ssh-keygen -t ed25519 -C "zuxin1997@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
# then go to https://github.com/settings/ssh/new and add the key


# some alias
echo "alias safe='conda activate safe'" >> ~/.bashrc
echo "alias offline='conda activate offline'" >> ~/.bashrc
echo "alias tb='tensorboard --host 0.0.0.0 --logdir'" >> ~/.bashrc
echo "alias c='clear'" >> ~/.bashrc