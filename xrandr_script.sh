#!/bin/bash

monitor=`xrandr | grep 'HDMI1 connected'`
# check if a monitor is connected. If so do:
if [ ! -z  "$monitor" ]; then

    xrandr --output HDMI1 --mode 1920x1080 --output eDP1 --off
    #xdotool mousemove 2880 540

fi
