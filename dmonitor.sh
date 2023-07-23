#!/bin/sh
# Toggle on/off an mainal monitor, HDMI does not support audio over HDMI as it's pretending that it's DVI

laptop="eDP1"
aux="DP-1-2"
main="DP-1-1"

extramonitor() {
  case "$1" in
      "laptopoff") xrandr --output "$laptop" --off ;;
      "laptopon") xrandr --output "$laptop" --auto ;;
      "external") xrandr --output "$main" --auto --right-of "$aux" --output "$aux" --auto --output "$laptop" --off ;;
      "all") xrandr --output "$main" --auto --right-of "$aux" --output "$aux" --auto --output "$laptop" --right-of "$aux" --auto ;;
      "allthree") xrandr --output "$aux" --mode 1920x1080 && xrandr --output "$main" --mode 1920x1080 && xrandr --output "$laptop" --auto --output "$aux" --left-of "$laptop" --output "$main" --right-of "$laptop";;
      "duplicate") xrandr --output "$main" --mode 1920x1080 && xrandr --output "$laptop" --auto --output "$main" --same-as "$laptop" ;;
      *) notify-send "Multi Monitor" "Unknown Operation" ;;
  esac
}

selection=$(printf "laptopon\nlaptopoff\nexternal\nall" | dmenu -i -p "Monitor Configuration")
#${selection:="laptopon"}
extramonitor "$selection" 
# && fixdualhead -pd "1 2 3 4 5 6 7" -p "$laptop" -s "$aux" -sd "8 9 0"
