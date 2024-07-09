#!/bin/bash
wal -q -i ~/Wallpapers/

source "$HOME/.cache/wal/colors.sh"

cp ~/.cache/wal/colors-waybar.css ~/.config/waybar/
cp $wallpaper ~/.cache/current_wallpaper.jpg
newwall=$(echo $wallpaper | sed "s|$HOME/Wallpapers/||g")

swww img $wallpaper --transition-step 20 --transition-fps=20
~/.config/scrIpts/waybar-launch.sh
notify-send "Theme and Wallpaper updated" "With image $newwall"

echo "DONE!"

