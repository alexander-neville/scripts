#!/bin/bash

confirmation="y"

if [ -z "$1" ]; then

    echo "No WM specified, Proceed with previous WM? [y/n]: "
    read confirmation

else

    echo $1 > $HOME/.choice


fi

if [[ $confirmation = "y" ]]; then

    /usr/bin/startx

fi

