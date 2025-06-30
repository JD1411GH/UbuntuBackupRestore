#!/bin/bash

echo "alias python='python3.10'" >> ~/.bashrc
echo "export PATH=\$PATH:/home/jayanta/Tools/flutter" >> ~/.bashrc

# set timezone
sudo timedatectl set-timezone Asia/Kolkata

# install python 3.10
# TODO

# install joplin
sudo apt update && sudo apt upgrade
sudo apt install libfuse2
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# install apt packages
sudo apt install default-jdk

# install deb packages

# map cloud drives
sudo apt install rclone
rclone config
./mount_cloud_drives.sh

# modify the prompt
echo 'PROMPT_COMMAND='\''PS1="[\$(date +%H:%M)] \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "'\''' >> ~/.bashrc

# other changes to .bashrc
echo "alias python='python3.10'" >> ~/.bashrc
