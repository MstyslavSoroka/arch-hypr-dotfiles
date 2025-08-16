#!/bin/bash
# Waybar start script

# Kill all existing Waybar instances
killall -q waybar

# Wait a bit to ensure they're fully closed
sleep 0.5

# Load config based on user
waybar -c "$HOME/.config/waybar/config.jsonc" -s "$HOME/.config/waybar/style.css" &
