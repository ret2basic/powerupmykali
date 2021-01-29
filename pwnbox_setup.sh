#!/bin/bash

# Update and Upgrade
cd
sudo apt --assume-yes update
sudo apt --assume-yes upgrade

# Python
sudo apt --assume-yes install python-is-python3

# Pwntools
sudo apt --assume-yes update
sudo apt --assume-yes install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
pip3 install --upgrade pip
pip3 install --upgrade pwntools

# Docker
sudo apt --assume-yes update
sudo apt --assume-yes install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt --assume-yes install docker-ce docker-ce-cli containerd.io

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Vim
sudo apt --assume-yes install vim

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt --assume-yes install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt --assume-yes update
sudo apt --assume-yes install sublime-text

# Powerline fonts
sudo apt --assume-yes install fonts-powerline

# Zsh
sudo apt --assume-yes install zsh

# tmux
sudo apt --assume-yes install tmux

# Oh My tmux
sudo apt --assume-yes install git
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Pwndbg
git clone https://github.com/pwndbg/pwndbg
./pwndbg/setup.sh

# OneGadget
sudo apt --assume-yes install ruby
gem install one_gadget

# GCC Multilib
sudo apt --assume-yes install gcc-multilib

# Z3
pip3 install z3-solver

# angr
sudo apt --assume-yes install python3-dev libffi-dev build-essential virtualenvwrapper
pip3 install angr

# PyCryptodome
pip3 install pycryptodome

# Go
wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
rm go1.15.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# ffuf
go get -u github.com/ffuf/ffuf

# httprobe
go get -u github.com/tomnomnom/httprobe

# assetfinder
go get -u github.com/tomnomnom/assetfinder

# waybackurls
go get github.com/tomnomnom/waybackurls

# GoWitness
go get -u github.com/sensepost/gowitness

# ExifTool
sudo apt --assume-yes install libimage-exiftool-perl

# Binwalk
sudo apt --assume-yes install binwalk

# jsteg
go get lukechampine.com/jsteg

# zsteg
gem install zsteg

# Sherlock
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
cd

# Scapy
pip3 install scapy

# Nmap
sudo apt --assume-yes install nmap

# Nikto
sudo apt --assume-yes install nikto

# rockyou.txt
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# SecLists
git clone https://github.com/danielmiessler/SecLists.git

# Updog
pip3 install updog

# WinPEAS and LinPEAS
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git

# pspy
git clone https://github.com/DominicBreuker/pspy.git

# ASCII art
cat << "EOF"


   _____                            _       _                           
  / ____|                          | |     | |                          
 | |     ___  _ __   __ _ _ __ __ _| |_ ___| |                          
 | |    / _ \| '_ \ / _` | '__/ _` | __/ __| |                          
 | |___| (_) | | | | (_| | | | (_| | |_\__ \_|                          
  \_____\___/|_| |_|\__, |_|  \__,_|\__|___(_)                          
                     __/ |                                              
                    |___/                                               
                                                                        
   _____      _                 ______ _       _     _              _ _ 
  / ____|    | |               |  ____(_)     (_)   | |            | | |
 | (___   ___| |_ _   _ _ __   | |__   _ _ __  _ ___| |__   ___  __| | |
  \___ \ / _ \ __| | | | '_ \  |  __| | | '_ \| / __| '_ \ / _ \/ _` | |
  ____) |  __/ |_| |_| | |_) | | |    | | | | | \__ \ | | |  __/ (_| |_|
 |_____/ \___|\__|\__,_| .__/  |_|    |_|_| |_|_|___/_| |_|\___|\__,_(_)
                       | |                                              
                       |_|                                              



EOF
