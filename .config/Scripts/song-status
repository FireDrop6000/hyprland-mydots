#!/bin/bash
player_name=$(playerctl metadata --format '{{playerName}}')
player_status=$(playerctl status)

if [[ "$player_status" == "Playing" ]]; then
  if [[ "$player_name" == "spotify" ]]; then
    song_info=$(playerctl metadata --format '{{title}}  󰓇   {{artist}}')
  elif [[ "$player_name" == "firefox" ]]; then
    song_info=$(playerctl metadata --format '{{title}}  󰈹   {{artist}}')
  elif [[ "$player_name" == "mpd" ]]; then
    song_info=$(playerctl metadata --format '{{title}}  󰎆   {{artist}}')
  elif [[ "$player_name" == "chromium" ]]; then
    song_info=$(playerctl metadata --format '{{title}}  󰊯   {{artist}}')
  fi
fi

echo "$song_info" 
