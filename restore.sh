#!/bin/bash

echo "alias python='python3.10'" >> ~/.bashrc
echo "export PATH=\$PATH:/home/jayanta/Tools/flutter" >> ~/.bashrc

# install joplin
sudo apt update && sudo apt upgrade
sudo apt install libfuse2
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# map cloud drives
sudo apt install rclone
rclone config
./mount_cloud_drives.sh

