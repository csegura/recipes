mkdir -p ~/recipes/customize/.config/i3
mkdir -p ~/recipes/customize/.config/i3status

cp ~/.Xdefaults ~/recipes/customize/dotfiles
cp -rp ~/.config/i3 ~/recipes/customize/.config
cp -rp ~/.config/i3status ~/recipes/customize/.config

cp /etc/xrdp/xrdp.ini ~/recipes/customize/xrdp/
cp /etc/xrdp/*.bmp ~/recipes/customize/xrdp/
