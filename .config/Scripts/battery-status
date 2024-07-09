#!/bin/sh

# status="$(acpi -b | grep -ioh "\w*charging\w*")"
# level="$(acpi -b | grep -o -P "[0-9]+(?=%)")"

status="$(cat /sys/class/power_supply/BAT1/status)"
level="$(cat /sys/class/power_supply/BAT1/capacity)"

if [[ ("$status" == "Discharging") || ("$status" == "Full") ]]; then
  if [[ "$level" -eq "0" ]]; then
    printf " "
  elif [[ ("$level" -ge "0") && ("$level" -le "25") ]]; then
    printf " "
  elif [[ ("$level" -ge "25") && ("$level" -le "50") ]]; then
    printf " "
  elif [[ ("$level" -ge "50") && ("$level" -le "75") ]]; then
    printf " "
  elif [[ ("$level" -ge "75") && ("$level" -le "100") ]]; then
    printf " "
  fi
elif [[ "$status" == "Charging" ]]; then
  printf " "
fi
