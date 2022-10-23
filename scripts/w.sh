#!/bin/bash

INTERFACE=wlp2s0
POINT=WIFI_NAME
PASSWORD=12345678
# Enable Wi-Fi
ip link set $INTERFACE up
# Connect to point
cat << EOF > /etc/wpa_supplicant.conf 
network={
    ssid="$POINT"
    psk="$PASSWORD"
    scan_ssid=1
}
EOF
wpa_supplicant -B -i $INTERFACE -c /etc/wpa_supplicant.conf
# Enable DHCP
cat << EOF > /etc/systemd/network/30-wlan.network
[Match]
Name=wl*

[Network]
DHCP=ipv4
EOF
systemctl restart systemd-networkd.service
# Enable DNS
grep -qxF "nameserver 1.1.1.1" /etc/resolv.conf || echo "nameserver 1.1.1.1" >> /etc/resolv.conf
systemctl restart systemd-resolved.service

