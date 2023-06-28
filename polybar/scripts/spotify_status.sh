#!/bin/bash
metadata=$(playerctl metadata artist)":"$(playerctl metadata title)
echo $metadata
