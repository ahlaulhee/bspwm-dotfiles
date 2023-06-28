#!/bin/bash

options="Logout\nReboot\nShutdown"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu:" -width 20 -lines 3)

case $chosen in
    Logout)
        bspc quit
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac
