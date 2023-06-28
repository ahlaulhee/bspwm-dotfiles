#!/bin/bash
WIN_ID=$(xdotool getactivewindow)
WM_CLASS=$(xprop -id $WIN_ID WM_CLASS | awk -F\" '{print $4}')
echo $WM_CLASS
