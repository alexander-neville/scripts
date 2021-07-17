#!/bin/sh

function zen_mode() {

    echo "zen" > /tmp/bspwm_layout
    killall polybar
    compositor.sh kill
    bspc config top_padding 0
    bspc config bottom_padding 0
    bspc config window_gap 0

}

function fashion_mode() {

    echo "fashion" > /tmp/bspwm_layout
    killall polybar
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
    polybar fashion_top &
    polybar fashion_bottom &
    compositor.sh start
    bspc config top_padding 47
    bspc config bottom_padding 47
    bspc config window_gap 10

}

function efficient_mode() {

    echo "efficient" > /tmp/bspwm_layout
    killall polybar
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
    polybar efficient &
    compositor.sh kill
    bspc config top_padding 32
    bspc config bottom_padding 0
    bspc config window_gap 0

}

if [[ $1 == "start" ]]; then # start polybar

    killall polybar
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

    if [[ $2 == "fashion" ]]; then

        fashion_mode
    
    elif [[ $2 == "efficient" ]]; then

        efficient_mode

    else 

        zen_mode

    fi

elif [[ $1 == "cycle" ]]; then

    current_layout="$(cat /tmp/bspwm_layout)"

    case $current_layout in
        "zen")
            fashion_mode
            ;;
        "fashion")
            efficient_mode
            ;;
        "efficient")
            zen_mode
            ;;
    esac

fi
