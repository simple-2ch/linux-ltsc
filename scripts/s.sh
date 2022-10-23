#!/bin/bash

# Install testing repository
cat << EOF > /etc/apt/sources.list
# Testing security updates repository
deb http://security.debian.org/debian-security testing-security main contrib non-free
# Testing repository main, contrib and non-free branches
deb http://deb.debian.org/debian testing main contrib non-free
EOF

# Install KDE Plasma and minimal software
apt update -y
apt upgrade -y
apt install -y kde-plasma-desktop kde-spectacle aha mesa-utils vulkan-tools systemd-timesyncd firefox-esr
apt purge -y partitionmanager konqueror khelpcenter zutty
apt autoremove -y
# Sudoers fix
USERNAME=$(id -un 1000)
grep -qxF "$USERNAME    ALL=(ALL:ALL) ALL" /etc/sudoers || sed -i "/# User privilege specification/a $USERNAME    ALL=(ALL:ALL) ALL" /etc/sudoers
# Locale fix
grep -qxF "export LC_ALL=C" /home/$USERNAME/.profile || echo "export LC_ALL=C" >> /home/$USERNAME/.profile
grep -qxF "export LC_ALL=C" /root/.profile || echo "export LC_ALL=C" >> /root/.profile
# Timesync fix
timedatectl set-ntp true
# Swap file
sudo swapoff -a
rm -rf /swapfile
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
grep -qxF "/swapfile swap swap defaults 0 0" /etc/fstab || echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
# Cleaning
rm -rf /etc/wpa_supplicant.conf
rm -rf /etc/systemd/network/30-wlan.network
sed -i "/nameserver 1.1.1.1/d" /etc/resolv.conf
printf "\033[37;1;41mFINISHED\033[0m\n"

