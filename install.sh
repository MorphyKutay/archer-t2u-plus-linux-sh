#!/bin/bash

sudo apt update
sudo apt install dkms git
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt update
sudo apt install build-essential libelf-dev linux-headers-$(uname -r)
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
sudo make dkms_install
iwconfig
