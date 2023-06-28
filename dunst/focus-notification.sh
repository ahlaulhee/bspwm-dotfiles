#!/bin/bash

# Get the window ID of the notification's source
window_id=$(dunstctl context | awk -F '"' '/client_window/ {print $4}')

# Focus the window
xdotool windowactivate "$window_id"

