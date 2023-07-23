#!/bin/sh

wifi() {
  case "$1" in
      "off") nmcli radio wifi off ;;
      "on") nmcli radio wifi on ;;
      "connect") nmtui ;;
      *) notify-send "Wifi" "Unknown Operation" ;;
  esac
}

selection=$(printf "off\non\nconnect" | dmenu -i -p "Wifi")
wifi "$selection" 