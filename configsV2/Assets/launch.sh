#!/bin/sh

# Kill all running instances
#killall waybar

#----------------------------------
# Load the config
#----------------------------------

#set the wallpaper to a random wallpaper in the users wallpaper folder in Pictures
# file path: ~/Pictures/wallpapers/

export wallpaper_path=~/Pictures/wallpapers/
# store all the image file names in wallpapers array
wallpapers=("$wallpaper_path"*)
# get array size
wallpapers_size=${#wallpapers[@]}

# set random wallpaper index
wallpapers_randomIndex=$((RANDOM % 3))

wal -a "0" -n -i "${wallpapers[$wallpapers_randomIndex]}" --backend "colorz"
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
swww img "${wallpapers[$wallpapers_randomIndex]}" --transition-step 20 --transition-fps 30 --transition-type random


# must be run last
path="~/Downloads/Git/Arch-Hyprland-Env/configsV2/waybar/"
#exec waybar -c ~/Downloads/Git/Arch-Hyprland-Env/configsV2/waybar/config -s ~/Downloads/Git/Arch-Hyprland-Env/configsV2/waybar/style.css
#

