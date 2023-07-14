#!/bin/bash
cd /YOUR_PIA_SCRIPTS_LOCATION/manual-connections
echo PIA startup - checking internet connectivity
while ! ping -c 1 www.privateinternetaccess.com; do sleep 1; done
sudo VPN_PROTOCOL=wireguard \
DISABLE_IPV6=yes \
DIP_TOKEN=no \
AUTOCONNECT=true \
PIA_PF=false \
PIA_DNS=true \
PIA_USER=YOUR_ID \
PIA_PASS=YOUR_PASSWORD ./run_setup.sh
