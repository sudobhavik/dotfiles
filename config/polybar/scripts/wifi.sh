#!/usr/bin/env bash

state=$(nmcli -t -f WIFI g)

if [ "$state" = "disabled" ]; then
    echo "󰤮"
    exit
fi

ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)

if [ -z "$ssid" ]; then
    echo "󰤯"
else
    echo "󰤨 $ssid"
fi
