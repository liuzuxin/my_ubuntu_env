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

ctrl + a + - #split horizontally
ctrl + a + \ #split vertically
alt + arrow # switch the window
tmux a # rapidly go to the session

查看所有的session（在terminal输入）
tmux ls : 这个命令是在terminal里输入的。当前正常运作中的tmux server会显示（attached）。没有的话就是已关闭，tmux server在后台运行。

tmux new -s py35 : 新建一个名为py35的session
断开一个session(detached) （tmux状态下输入）

prefix + d ：退出session。在只有一个window的状态下，直接输入exit也能退出
重新连接某一个session wich name（在terminal输入）

tmux a -t py35 : 重新连接py35 session。这里的a是attach的意思
偷懒连接上一个session（在terminal输入）

tmux a : 如果只有一个session的话，这个是最快的连接方法
删除session（在terminal输入）

tmux kill-session -a -t py35 : 删除除了py35以外的所有session
