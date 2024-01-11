#! /bin/sh
#this is command
sudo apt clean
sudo nala update
sudo apt --fix-broken install
sudo nala autoremove
sudo apt autoclean
sudo dpkg --configure -a
sudo nala install -f
sudo nala update
sudo nala list --upgradable -a
#you can throw misc stuff here like
# sudo yt-dlp -U
# pip install --upgrade pip
# sudo flatpack update -y
# sudo flatpack uninstall --unused
sudo nala upgrade -y
sudo apt update -m
sudo apt dist-upgrade
sudo apt full-upgrade -y
sudo nala autoremove
sudo nala clean
