#!/bin/bash

#-------------#
# Run as user |
#-------------#

cd
mkdir ~/Arsenal

# Sherlock
git clone https://github.com/sherlock-project/sherlock.git ~/Arsenal
python -m pip install -r ~/Arsenal/sherlock/requirements.txt

# php-reverse-shell.php
mkdir ~/Arsenal/php-reverse-shell
wget https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php -O ~/Arsenal/php-reverse-shell.php

# rockyou.txt
mkdir ~/Arsenal/rockyou
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/Arsenal/rockyou/rockyou.txt

# SecLists
git clone https://github.com/danielmiessler/SecLists.git ~/Arsenal

# WinPEAS and LinPEAS
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git ~/Arsenal

# pspy
git clone https://github.com/DominicBreuker/pspy.git ~/Arsenal

# Go
wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
rm go1.15.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# ffuf
sudo go get -u github.com/ffuf/ffuf

# httprobe
sudo go get -u github.com/tomnomnom/httprobe

# assetfinder
sudo go get -u github.com/tomnomnom/assetfinder

# waybackurls
sudo go get github.com/tomnomnom/waybackurls

# GoWitness
sudo go get -u github.com/sensepost/gowitness

# jsteg
sudo go get lukechampine.com/jsteg

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
