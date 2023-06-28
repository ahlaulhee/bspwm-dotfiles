#!/bin/bash

if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c ~/.config/polybar/config &
  done
else
  polybar --reload main -c ~/.config/polybar/config &
fi
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar --reload secondary -c ~/.config/polybar/config & done
else
  polybar --reload secondary -c ~/.config/polybar/config &
fi
