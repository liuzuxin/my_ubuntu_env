## How to find files/dirs
See [here](https://askubuntu.com/questions/123305/how-to-find-a-folder-on-my-server-with-a-certain-name)
```
find folder_full_path -name exampledocs -type d
```
`-d` means directory.

## How to check disk usage
Check each folder's space
```
sudo du -sh /home/*
```
Check percentage:
```
sudo df -h /home
```


## How to mount a hard disk with certain permission
https://www.techrepublic.com/article/how-to-properly-automount-a-drive-in-ubuntu-linux/

## How to mount a remote disk to your local machine
Put the following command to your bashrc, and call this `mount1` command whenever you want to mount the remote disk to your local machine.

```
alias mount1="sudo umount -l /your_local_dir || echo \"not mounted but it is ok\" && sshfs username@serverIP:/server/dir /your_local_dir"
```
For instance:
```
alias mount1="sudo umount -l /exp/gpu1 || echo \"not mounted but it is ok\" && sshfs zuxin@GPU1:/home/zuxin /exp/gpu1"
alias mount2="sudo umount -l /exp/gpu2 || echo \"not mounted but it is ok\" && sshfs zuxin@safeai-gpu2.andrew.cmu.edu:/home/zuxin /exp/gpu2"
alias mount3="sudo umount -l /exp/gpu3 || echo \"not mounted but it is ok\" && sshfs zuxin@safeai-gpu3.andrew.cmu.edu:/home/zuxin /exp/gpu3"
alias mountd="sudo umount -l /exp/data || echo \"not mounted but it is ok\" && sshfs zuxin@safeai-dataserver.andrew.cmu.edu:/home/zuxin /exp/data"

```

To facilitate ssh, I will use the following alias:
```
alias gpu1="ssh zuxin@safeai-gpu1.andrew.cmu.edu"
alias gpu2="ssh zuxin@safeai-gpu2.andrew.cmu.edu"
alias gpu3="ssh zuxin@safeai-gpu3.andrew.cmu.edu"
alias data="ssh zuxin@safeai-dataserver.andrew.cmu.edu"

```

## Tmux

### 层级结构：
```
session1
├── window1
├──├── pane1
├──├── pane2
├──├── ...
├── window2
├── ...
session2
...
```
[我的tmux设置](ubuntu_20_04_config/config/tmux.conf.local)里面 `prefix = ctrl + a`, 原厂默认是 `ctrl + b`.

凡是命令里面带 tmux 的，都是在tmux session之外，terminal里面操作的。带prefix的是在tmux session里面操作的.

切换session，window的操作，最简单的：

```
prefix + w， 然后用方向键和回车来选择, 同时可以preview这些window
```

### session 级别操作
tmux # crea a new session

tmux new -s py35 : 新建一个名为py35的session

tmux a -t py35 : 重新连接py35 session。这里的a是attach的意思

tmux a # rapidly go to the last session，偷懒连接上一个session，如果只有一个session的话，这个是最快的连接方法

tmux ls # 当前正常运作中的tmux server会显示（attached）。没有的话就是已关闭，tmux server在后台运行。

tmux kill-session -a -t py35 : 删除除了py35以外的所有session

tmux kill-session -t py35 : 删除py35这个session

tmux kill-session -a : 可以在session里面操作，删除除了当前session之外的所有session

tmux rename-session -t session-name new-session-name # rename

prefix + :new ：新建session

prefix + d ：退出session。在只有一个window的状态下，直接输入exit也能退出

### window 级别操作
prefix + c # create new window

prefix + 0,...,9 # switch to the corresponding window number

prefix + & # close current window

prefix + , # rename the current window

### pane 级别操作

prefix + - # split horizontally

prefix + _ # split vertically, 在我的快捷键里面变成了 

prefix + arrow # switch the window, 在我的设置里面直接鼠标点也行
