#!/usr/bin/env bash

# Force rescan
nmcli device wifi rescan >/dev/null 2>&1
sleep 1

# Get wifi list
WIFI_LIST=$(nmcli -f IN-USE,SSID,SECURITY,SIGNAL device wifi list | sed 1d)

# If empty, exit
[ -z "$WIFI_LIST" ] && exit 0

# Show menu
CHOSEN=$(echo "$WIFI_LIST" | rofi -dmenu -i -p "Wi-Fi" -theme ~/.config/rofi/config.rasi)

# Exit if nothing chosen
[ -z "$CHOSEN" ] && exit 0

# Extract SSID (remove leading * and spaces)
SSID=$(echo "$CHOSEN" | sed 's/^\*//' | awk '{$1=$1};1' | cut -d' ' -f1)

# Connect
nmcli device wifi connect "$SSID"

