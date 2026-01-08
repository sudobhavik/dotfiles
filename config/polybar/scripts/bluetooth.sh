#!/usr/bin/env bash

# Check if bluetooth service is running
if ! systemctl is-active --quiet bluetooth; then
    echo "󰂲"
    exit
fi

# Get power status safely
powered=$(bluetoothctl show 2>/dev/null | awk '/Powered/ {print $2}')

if [ "$powered" = "yes" ]; then
    echo "󰂯"
else
    echo "󰂲"
fi

