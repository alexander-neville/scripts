#!/bin/sh

time_stamp=`date +"%H:%M:%S_%d-%m-%y"`
file=~/image/screenshots/IMG_$time_stamp.png
import $file
xclip -selection clipboard -t image/png -i $file

if [[ $1 != "save" ]]; then

    rm -f $file
    exit 0

else

    exit 0

fi
