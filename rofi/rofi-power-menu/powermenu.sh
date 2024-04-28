#! /bin/sh
uptime="`uptime -p | sed -e 's/up //g'`"

choice0=" Uptime: $uptime"
choice1="   Power Off"
choice2="   Restart"
choice3="   Suspend"
choice4="   Hibernate"
choice5="   Log Out"
choice6="   Lock"

chosen=$(printf "$choice0\n$choice1\n$choice2\n$choice3\n$choice4\n$choice5\n$choice6\n" | rofi -dmenu -i -no-show-icons -l 7 -width 30 -p " Goodbye ${USER}")


case "$chosen" in
  "$choice0") ;;
	"$choice1") poweroff ;;
	"$choice2") reboot ;;
	"$choice3") systemctl suspend-then-hibernate ;;
	"$choice4") systemctl hibernate ;;
	"$choice5") killhypr ;;
	"$choice6") hyprlock -l ;;
esac

