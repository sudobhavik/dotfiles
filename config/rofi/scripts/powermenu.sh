#!/usr/bin/env bash

options="⏻ Shutdown\n Reboot\n󰍃 Logout\n󰒲 Suspend"

choice=$(printf "$options" | rofi -dmenu -p "Power")

case "$choice" in
  *Shutdown) systemctl poweroff ;;
  *Reboot) systemctl reboot ;;
  *Logout) i3-msg exit ;;
  *Suspend) systemctl suspend ;;
esac
