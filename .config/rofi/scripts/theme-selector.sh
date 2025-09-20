#!/usr/bin/env bash

THEME_DIR="$HOME/.config/themes"

SELECTED_THEME=$(ls "$THEME_DIR" | rofi -dmenu)

if [ -z "$SELECTED_THEME" ]; then 
    exit 0
fi

ln -sfn "$THEME_DIR/$SELECTED_THEME/hypr/colors.conf" "$HOME/.config/hypr/colors.conf"
hyprctl reload

ln -sfn "$THEME_DIR/$SELECTED_THEME/rofi/colors.rasi" "$HOME/.config/rofi/colors.rasi"

ln -sfn "$THEME_DIR/$SELECTED_THEME/kitty/colors.conf" "$HOME/.config/kitty/colors.conf"

ln -sfn "$THEME_DIR/$SELECTED_THEME/waybar/colors.css" "$HOME/.config/waybar/colors.css"
killall waybar
nohup waybar > /dev/null &

if ! pgrep -x "swww-daemon" > /dev/null; then
    nohup swww-daemon > /dev/null &
fi

if [ ! -d "$HOME/.config/swww" ]; then
    mkdir "$HOME/.config/swww"
fi

ln -sfn "$THEME_DIR/$SELECTED_THEME/wallpaper.png" "$HOME/.config/swww/current"
swww img --transition-type grow --transition-pos $(hyprctl cursorpos | tr -d ' ') --invert-y --transition-fps 60 ~/.config/swww/current
