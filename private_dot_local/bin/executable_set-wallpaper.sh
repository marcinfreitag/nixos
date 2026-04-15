#!/usr/bin/env bash
#
# set-wallpaper.sh - sets wallpaper on hyprland
#

gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 "Welcome to $(basename $0)!"

if ! gum confirm "Do you want to change wallpaper?"; then
    echo -e "\n:: Changing wallpaper canceled."
    exit;
fi

# Replace current.jpg with a new one, refresh current wallpaper, generate color palette
currentWallpaper=$HOME/Pictures/wallpapers/.current
newWallpaper=$(gum file --padding="1" "$HOME/Pictures/wallpapers")
if [ -n "$newWallpaper" ]; then
    ln -fs "$newWallpaper" "$currentWallpaper"
fi

if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
    hyprctl hyprpaper wallpaper ", $currentWallpaper"
fi

echo -e "\n:: Done. Press [ENTER] to close."
read
