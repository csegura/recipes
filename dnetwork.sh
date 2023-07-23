#!/bin/sh

if_wifi="wlp4s0"
if_dock="wwp0s20f0u6i12"
if_laptop=

network() {
  case "$1" in
      "woff") nmcli radio wifi off ;; 
      "won") nmcli radio wifi on ;; 
      "don") ip link set dev wwp0s20f0u6i12 up & ;;
      "connect") nmtui ;;
      *) notify-send "Wifi" "Unknown Operation" ;;
  esac
}

selection=$(printf "off\non\nconnect" | dmenu -i -p "Wifi")
network "$selection" 