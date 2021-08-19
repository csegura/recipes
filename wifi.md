
wireless-tools install iwconfig, iwlist
network-manager install nmcli, nmtui

sudo apt install wireless-tools network-manager

dpkg -L wireless-tools (list package content)
dpkg -L network-manager (list package content)


nmcli radio wifi off
nmcli radio wifi on

nmcli device status
