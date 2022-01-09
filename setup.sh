#!/bin/bash

# Log in with `kali:kali`
# Change password immediately:
# $ passwd

# Then install pipmykali
# https://github.com/Dewalt-arch/pimpmykali

#---------#
# Install |
#---------#

# Preparation
cd
apt update -y && apt upgrade -y

# Terminator
apt install -y terminator

# Nautilus
apt install -y nautilus

# Pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm get-pip.py

# Docker
apt update -y
apt install -y curl gnupg2 apt-transport-https software-properties-common ca-certificates
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" | tee  /etc/apt/sources.list.d/docker.list
apt update -y
apt install -y docker-ce docker-ce-cli containerd.io

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update -y
apt install -y sublime-text

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Powerline fonts
apt install -y fonts-powerline

# Oh My tmux
apt install -y git
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# GDB
apt install -y libc6-dbg gdb valgrind 

# Pwntools
apt update -y
apt install -y python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
pip3 install --upgrade pip
pip3 install 'pwntools>=4.7.0b0'

# Pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd

# OneGadget
apt install -y ruby
gem install one_gadget

# GCC Multilib
apt install -y gcc-multilib

# Z3
pip3 install z3-solver

# angr
apt -y install python3-dev libffi-dev build-essential virtualenvwrapper
pip3 install angr

# PyCryptodome
pip3 install pycryptodome

# zsteg
gem install zsteg

# Scapy
pip3 install scapy

# Updog
pip3 install updog

# Java
apt update -y
apt install -y default-jdk

# Go
wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
rm go1.17.6.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
echo -e "\n" >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export GOROOT=/usr/local/go' >> ~/.zshrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.zshrc
source ~/.zshrc

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

# jsteg
go get lukechampine.com/jsteg

#---------#
# Arsenal |
#---------#

mkdir ~/Arsenal

# Sherlock
git clone https://github.com/sherlock-project/sherlock.git ~/Arsenal/sherlock
python3 -m pip install -r ~/Arsenal/sherlock/requirements.txt

# Unzip rockyou.txt
gunzip /usr/share/wordlists/rockyou.txt.gz

# SecLists
apt install -y seclists

# WinPEAS and LinPEAS
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git ~/Arsenal/PEAS

# pspy
git clone https://github.com/DominicBreuker/pspy.git ~/Arsenal/pspy

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
