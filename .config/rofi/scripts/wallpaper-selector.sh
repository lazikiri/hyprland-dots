#!/usr/bin/env bash

SELECTED_WALLPAPER=$(ls "$HOME/Pictures/Wallpapers" | rofi -dmenu)

if ! pgrep -x "swww-daemon" > /dev/null; then
    nohup swww-daemon > /dev/null &
fi

if [ ! -d "$HOME/.config/swww" ]; then
    mkdir "$HOME/.config/swww"
fi

ln -sfn "$HOME/Pictures/Wallpapers/$SELECTED_WALLPAPER" "$HOME/.config/swww/current"
swww img --transition-type grow --transition-pos $(hyprctl cursorpos | tr -d ' ') --invert-y --transition-fps 60 ~/.config/swww/current
