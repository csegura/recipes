# THE MOST WONDERFUL LINUX DEV

# Init
apt install open-vm-tools
apt install sudo
/sbin/adduser romheat sudo

# Basic Packages
apt install git zsh vim 
apt install unzip curl
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# see: https://thomashunter.name/i3-configurator/
apt install i3 i3status i3lock dmenu
apt install lightdm x11-xserver-utils xbacklight
apt install xdg-utils xsel xclip inmtui rxvt-unicode

# Other tools
apt install htop tmux autorandr 

# Keyring
apt install gnome-keyring

- /.config/i3/ 
- exec --no-startup-id /usr/bin/gnome-keyring-daemon --start --components=ssh,secrets,pkcs11

# Install fonts
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"


# node.js install
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash - 
sudo apt install node

# optional 
apt install imagemagick 

# vscode 
"window.titleBarStyle": "custom",


# nfs shares
apt install nfs-common
ssh-copy-id -i ./.ssh/id_rsa.pub romheat@tierra

/etc/fstab
tierra:/home/romheat/dev /home/romheat/dev nfs4 _netdev,auto 0 0%

/etc/exports
/home/romheat/dev	192.168.1.226(rw,sync) 
(could be necesary no_root_squash)

 sudo systemctl restart nfs-kernel-server
