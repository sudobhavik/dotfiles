#!/usr/bin/env bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

FILE="$DIR/area_$(date +%F_%H-%M-%S).png"

maim -s | tee "$FILE" | xclip -selection clipboard -t image/png

notify-send "Area screenshot saved & copied" "$(basename "$FILE")"

