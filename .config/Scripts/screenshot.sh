#!/bin/bash

data="$(hyprctl -j activewindow)"
x=$( jq -r  '.at[0]' <<< "${data}" )
y=$( jq -r  '.at[1]' <<< "${data}" )
w=$( jq -r  '.size[0]' <<< "${data}" )
h=$( jq -r  '.size[1]' <<< "${data}" )

filename="$(date +'%s_grim.png')"

option1="Selected window (delay 2 sec)"
option2="Selected area"
option3="Fullscreen (delay 3 sec)"

options="$option1\n$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Take Screenshot")

case $choice in
    $option1)
        sleep 2
        grim -g "${x}, ${y} ${w}x${h}" ~/Pictures/Screenshots/${filename}
        wl-copy < ~/Pictures/Screenshots/${filename}
        notify-send "Screenshot created" "Mode: Selected window"
    ;;
    $option2)
        grim -g "$(slurp)" ~/Pictures/Screenshots/${filename}
        wl-copy < ~/Pictures/Screenshots/${filename}
        notify-send "Screenshot created" "Mode: Selected area"
    ;;
    $option3)
        sleep 3
        grim ~/Pictures/Screenshots/${filename}
        wl-copy < ~/Pictures/Screenshots/${filename}
        notify-send "Screenshot created" "Mode: Fullscreen"
    ;;
esac

