#!/bin/bash

monitor=`xrandr | grep 'HDMI-A-0 connected'`
# check if a monitor is connected
if [ ! -z  "$monitor" ]; then

    xrandr --output HDMI1-A-0 --mode 1920x1080 --output eDP --off

fi

exit 0
