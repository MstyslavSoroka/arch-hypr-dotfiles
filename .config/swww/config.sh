#!/bin/bash

# Start the daemon if not running
pgrep -x swww-daemon >/dev/null || swww-daemon &

# Wait for daemon to be ready
sleep 0.5

# Set wallpaper directory
WALLPAPER_DIR="$HOME/wallpapers"

# Pick a random image
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)
cp "$RANDOM_WALLPAPER" "$HOME/.config/hypr/temporaryWalls/wallpaper.jpg"

# Set it with a fade transition
swww img "$RANDOM_WALLPAPER" --transition-type any --transition-duration 1
