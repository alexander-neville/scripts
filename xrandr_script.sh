#!/bin/bash


monitor=`xrandr | grep 'HDMI-A-0 connected'`
# check if a monitor is connected. If so do:
if [ ! -z  "$monitor" ]; then

    xrandr --output HDMI1-A-0 --mode 1920x1080 --output eDP --off
    #xdotool mousemove 2880 540

fi
