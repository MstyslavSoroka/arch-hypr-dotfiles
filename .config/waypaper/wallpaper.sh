#!/bin/bash

sleep 0.1

config="$HOME/.config/waypaper/config.ini"
dest="$HOME/.config/hypr/temporaryWalls/wallpaper.jpg"

WALLPAPER=$(awk -F' = ' '/^wallpaper =/ {gsub(/^~\//, ENVIRON["HOME"]"/", $2); print $2}' "$config")

cp -- "$WALLPAPER" "$dest"

matugen image "$WALLPAPER"
