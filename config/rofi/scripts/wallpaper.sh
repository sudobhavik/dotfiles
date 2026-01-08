#!/usr/bin/env bash

WALLDIR="$HOME/Pictures/Wallpapers"
THUMBDIR="$HOME/.cache/wallpaper-thumbs"

mkdir -p "$THUMBDIR"

entries=""

# Generate thumbnails and build rofi entries
for img in "$WALLDIR"/*.{jpg,jpeg,png,webp}; do
    [ -e "$img" ] || continue

    name=$(basename "$img")
    thumb="$THUMBDIR/$name.png"

    # Generate thumbnail if missing
    if [ ! -f "$thumb" ]; then
        convert "$img" \
            -thumbnail 500x300 \
            -gravity center \
            -background none \
            "$thumb"
    fi

    # Rofi entry with icon
    entries+="$name\0icon\x1f$thumb\n"
done

# Launch rofi (scrollable grid)
choice=$(printf "$entries" | rofi -dmenu \
    -p "Wallpapers" \
    -show-icons \
    -markup-rows \
    -theme-str '
        window {
            width: 60%;
            height: 50%;
            padding: 8px;
        }
        listview {
            columns: 4;
            spacing: 8px;
            scrollbar: true;
        }
        element {
            orientation: vertical;
            padding: 2px;
            border-radius: 8px;
        }
        element-icon {
            size: 200px;
            border-radius: 10px;
        }
        element-text {
            enabled: false;
        }
    ')

[ -z "$choice" ] && exit

# Force correct wallpaper behavior (minimal setup)
feh --no-fehbg --bg-fill "$WALLDIR/$choice"

# Save wallpaper for persistence
cp "$HOME/.fehbg" "$HOME/.fehbg_last" 2>/dev/null
