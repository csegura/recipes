## Fonts
sudo apt install fonts-font-awesome

## Taping On 
- Touchpad tap
sudo vi /usr/share/X11/xorg.conf.d/40-libinput.conf

Modify Section "InputClass" -> TouchPad

    Identifier "libinput touchpad catchall"
      MatchIsTouchscreen "on"
      MatchDevicePath "/dev/input/event*"
      Driver "libinput"
      +Option "Tapping" "on"
    EndSection


## Monitor
- Use autorandr to store monitor configurations

sudo apt install autorandr 

## Hardware - Firmware updates
sudo apt install fwupd

## Video / Audio
sudo apt install ffmpeg
- video0 laptop video4 logitech
ffplay /dev/video0
aplay -l # list devices
alsamixer
~/.asoundrc
pcm.!default {
    type hw
    card 1
}

ctl.!default {
    type hw
    card 1
}

## Bluethoth
bluetoothctl

## install 3rd parties repos
sudo apt install software-properties-common

