alias 122='vasua && cd private/15122/HW/'
alias FUCK='fuck'
alias bashrc='vim ~/dotfiles/.bashrc && source ~/.bashrc'
alias cd..='cd ..'
alias cmu='sshfs vasua@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/usr11/vasua ~/andrew'
alias ece='ssh -X vasua@ece001.ece.cmu.edu'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias grep='grep --colour=auto'
alias hydro='cd ~/Documents/catkin_ws/src/hydroponics/'
alias ll='ls -al'
alias ls='ls --color=auto'
alias mountShark='sshfs vasua@shark.ics.cs.cmu.edu:/afs/andrew.cmu.edu/usr11/vasua ~/andrew && cd ~/andrew'
alias mountSparky='sshfs sparky@bbb:/ ~/Documents/BeagleBone/root/ -p 4242'
alias mountece='sshfs -o follow_symlinks vasua@ece001.ece.cmu.edu:/afs/ece.cmu.edu/usr/vasua/ ~/ece && cd ~/ece'
alias scara='cd ~/Documents/catkin_ws/src/SCARA_test_1/'
alias ss='ssh -X andrew'
alias sshShark='ssh -x vasua@makoshark.ics.cs.cmu.edu'
alias sshSparky='ssh sparky@bbb -p 4242'
alias swerve='cd ~/Dropbox/College/Freshman\ Year/Web_controlled_swerve_drive_robot/Code'
alias syncSparky='rsync -aL /home/mint/Documents/catkin_ws/src/     -e '\''ssh -p 4242'\''     sparky@bbb:/home/sparky/Documents/Hydroponics/catkin_ws/src     --exclude .git --exclude .gitignore'
alias umount='sudo umount -l'
alias vasua='cd /afs/andrew.cmu.edu/usr11/vasua'
alias vimrc='vim ~/.vimrc'



export TERM=xterm-256color
export HISTSIZE=10000
export ROS_ROOT=/opt/ros/indigo/share/ros
#export ROS_PACKAGE_PATH=/home/mint/Documents/catkin_ws/src:/opt/ros/indigo/share:/opt/ros/indigo/stacks:/home/mint/Documents/autokrawler
export ROS_MASTER_URI=http://localhost:11311
export HISTFILESIZE=20000
#export PATH=/home/mint/Documents/catkin_ws/devel/bin:/opt/ros/indigo/bin:/home/mint/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export COLORTERM=gnome-terminal
export PLS=plswork

# The next line updates PATH for the Google Cloud SDK.
source '/home/mint/Documents/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/home/mint/Documents/google-cloud-sdk/completion.bash.inc'

# ROS Source
source /opt/ros/indigo/setup.bash
source ~/Documents/catkin_ws/devel/setup.bash

export ROS_PACKAGE_PATH=/home/mint/Documents/catkin_ws/src:/opt/ros/indigo/share:/opt/ros/indigo/stacks:/home/mint/Documents/autokrawler
