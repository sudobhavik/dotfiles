#!/usr/bin/env bash

power=$(bluetoothctl show | grep Powered | awk '{print $2}')

if [ "$power" = "no" ]; then
  echo "Enable Bluetooth" | rofi -dmenu -p "Bluetooth" | grep -q Enable && bluetoothctl power on
  exit
fi

devices=$(bluetoothctl devices | sed 's/Device //')

choice=$(printf "Disable Bluetooth\n$devices" | rofi -dmenu -p "Bluetooth")

[ -z "$choice" ] && exit

if [ "$choice" = "Disable Bluetooth" ]; then
  bluetoothctl power off
else
  mac=$(echo "$choice" | awk '{print $1}')
  bluetoothctl connect "$mac"
fi
