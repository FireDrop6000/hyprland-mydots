#!/bin/bash

option1="󰌳   ncmpcpp"
option2="󰓇   Spotify"
option3="   YouTube Music"

options="$option1\n$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Choose Music Player")

case $choice in
  $option1)
    kitty --title ncmpcpp bash -i -c 'ncmpcpp-extended'
  ;;
  $option2)
    LD_PRELOAD=/usr/lib/spotify-adblock.so spotify & disown
  ;;
  $option3)
    youtube-music & disown
  ;;
esac

