#!/usr/bin/env bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

FILE="$DIR/full_$(date +%F_%H-%M-%S).png"

maim | tee "$FILE" | xclip -selection clipboard -t image/png

notify-send "Screenshot saved & copied" "$(basename "$FILE")"

