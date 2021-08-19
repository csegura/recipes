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
