#!/usr/bin/env bash

# Kill existing bars
killall -q polybar

# Wait until they are gone
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch polybar ONCE
polybar example &

