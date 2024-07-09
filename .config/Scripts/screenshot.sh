#!/bin/bash

DIR="$HOME/Pictures/Screenshots/"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).png"

# option1="Selected window (delay 3 sec)"
option2="Selected area"
option3="Fullscreen (delay 3 sec)"

# options="$option1\n$option2\n$option3"
options="$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Take Screenshot")

case $choice in
    # $option1)
    #     scrot $DIR$NAME -d 3 -e 'xclip -selection clipboard -t image/png -i $f' -c -z -u
    #     notify-send "Screenshot created" "Mode: Selected window"
    # ;;
    $option2)
        grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +'%s_grim.png')
        notify-send "Screenshot created" "Mode: Selected area"
    ;;
    $option3)
        sleep 3
        grim ~/Pictures/Screenshots/$(date +'%s_grim.png')
        notify-send "Screenshot created" "Mode: Fullscreen"
    ;;
esac

