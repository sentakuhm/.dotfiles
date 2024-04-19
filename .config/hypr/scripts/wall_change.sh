#!/bin/bash

theme="$HOME/.config/rofi/wall-change.rasi"

wallpaper_folder=$HOME/Pictures/wallpapers/
wallpaper_location="$(ls "$wallpaper_folder" | sort | rofi -dmenu -i -p "Select Background" \
	-theme ${theme} \
	-hover-select -me-select-entry '' \
	-me-accept-entry MousePrimary)"

if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
	wallpaper_temp="$wallpaper_location"
elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
	swww img "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" --transition-step 100 --transition-fps 60 \
		--transition-type any --transition-duration 1
else
	exit 1
fi
