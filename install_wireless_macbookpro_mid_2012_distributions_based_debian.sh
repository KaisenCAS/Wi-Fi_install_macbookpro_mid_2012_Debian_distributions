#!/bin/sh

echo 'This script activates a wireless card on a MacBookPro 9.2 (Mid-2012) after Ubuntu install and Debian install'

#Add repository for download and install firmware-b43
echo 'deb http://deb.debian.org/debian/ stretch main contrib non-free' | sudo tee -a /etc/apt/sources.list
#Update repositories for applicates modifications in /etc/apt/sources.list
sudo apt-get update
#Install firmware-b43-(wireless driver)
sudo apt-get install firmware-b43-installer -y
#Reboot for activate wireless card
sudo reboot
