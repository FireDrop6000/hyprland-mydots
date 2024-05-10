#!/bin/bash

pid="$(pgrep wf-recorder)"
pgrep_exit_code="$?"

VID="/home/pratik/Videos/Recordings/$(date +'recording_%Y-%m-%d_%H-%m-%s').mkv"

if [ "$pgrep_exit_code" != "0" ]; then
  notify-send "Recording Started..." -i ~/.config/dunst/icons/recorder/recording.png -r 9991
  wf-recorder -a -o eDP-1 -f "$VID" &
else
  notify-send "Recording saved" "Saved as file $VID" -i ~/.config/dunst/icons/recorder/save.png -r 9991
  pkill --signal SIGINT wf-recorder
  while pgrep wf-recorder; do
    sleep 0.1
  done
fi

pkill -RTMIN+2 waybar
