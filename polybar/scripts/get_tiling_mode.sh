#!/bin/bash
# get_tiling_mode.sh

state=$(bspc query -T -n | jq -r '.client.state')

echo $state

