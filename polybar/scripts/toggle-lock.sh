#!/bin/bash

if pgrep xautolock
then
    killall xautolock
else
    xautolock -time 10 -locker "i3lock -i ~/Wallpapers/b47.png" &
fi

