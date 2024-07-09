#!/bin/sh

status="$(nmcli general status | grep -oh "\w*connect\w*")"

if [[ "$status" == "disconnected" ]]; then
  printf "󰤮 "
elif [[ "$status" == "connecting" ]]; then
  printf "󱍸 "
elif [[ "$status" == "connected" ]]; then
  # strength="$(nmcli -f IN-USE,SIGNAL device wifi | grep '*' | awk '{print $2}')"
  strength="$(python $HOME/.config/Scripts/wifi-conn-strength)"
  if [[ "$?" == "0" ]]; then
    if [[ "$strength" -eq "0" ]]; then
      printf "󰤯 "
    elif [[ ("$strength" -ge "0") && ("$strength" -le "25") ]]; then
      printf "󰤟 "  
    elif [[ ("$strength" -ge "25") && ("$strength" -le "50") ]]; then
      printf "󰤢 "
    elif [[ ("$strength" -ge "50") && ("$strength" -le "75") ]]; then
      printf "󰤥 "
    elif [[ ("$strength" -ge "75") && ("$strength" -le "100") ]]; then
      printf "󰤨 "
    fi
  else
    printf "󰈀 "
  fi
fi
