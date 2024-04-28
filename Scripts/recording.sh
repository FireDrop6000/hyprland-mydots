#!/bin/bash

pid="$(pgrep wf-recorder)"
status="$?"
VID="/home/pratik/Videos/Recordings/$(date +%Y-%m-%d_%H-%m-%s).mp4"

if [ "$status" != "0" ]; then
  notify-send "Recording started"
  wf-recorder -a -o eDP-1 -f "$VID"
else
  notify-send "Recording saved"
  pkill --signal SIGINT wf-recorder
fi

