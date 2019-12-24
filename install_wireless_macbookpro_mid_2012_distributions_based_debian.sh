#!/bin/bash

#Check root execution verification
if [[ "$EUID" -ne 0 ]]; then
	echo -e "Run this script as root"
	exit 1
fi

echo 'This script activates a wireless card on a MacBookPro 9.2 (Mid-2012) after Ubuntu install and Debian install'

#Add repository for download and install firmware-b43
echo 'deb http://deb.debian.org/debian/ stretch main contrib non-free' | tee -a /etc/apt/sources.list.d/wifimac.list
#Update repositories for applicates modifications in /etc/apt/sources.list
apt-get update
#Install firmware-b43-(wireless driver)
apt-get install firmware-b43-installer -y
#Reboot for activate wireless card
reboot
