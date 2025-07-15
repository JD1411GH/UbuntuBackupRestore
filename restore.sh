#!/bin/bash

# backup .bashrc
cp ~/.bashrc ~/.bashrc.orig

# TODO flutter installation
echo "export PATH=\$PATH:/home/jayanta/Tools/flutter" >> ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 22

# set timezone
sudo timedatectl set-timezone Asia/Kolkata

# install python 3.10
# TODO
echo "alias python='python3.10'" >> ~/.bashrc

# install joplin
sudo apt update && sudo apt upgrade
sudo apt install libfuse2
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# install necessary apt packages
sudo apt install default-jdk google-android-platform-tools-installer

# TODO install deb packages

# map cloud drives
sudo apt install rclone
rclone config
./mount_cloud_drives.sh

# modify the prompt
echo 'PROMPT_COMMAND='\''PS1="[\$(date +%H:%M)] \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "'\''' >> ~/.bashrc
