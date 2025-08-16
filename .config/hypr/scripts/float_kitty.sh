#!/bin/bash
alacritty &

# Wait for the window to appear and get its ID
sleep 0.3

# Toggle floating on the focused window (should be the new terminal)
hyprctl dispatch togglefloating
