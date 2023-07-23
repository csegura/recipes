# Install Intel wifi drivers
# in /etc/apt/sources.list add controb non-frre after main

apt install iwlwifi
apt install network-manager

# use nmtui to connect wifi

# usb-c 

ip link show
sudo ip link set dev wwp0s20f0u6i12 up

sudo systemctl restart  network-manager
/etc/Networkmanager/NetworkManager.conf

namaged=true
