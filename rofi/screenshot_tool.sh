#!/bin/bash

rofi_command="rofi -theme $HOME/.config/rofi/themes/screenshot_tool.rasi"

screen=""
clipboard=""
area=""
window=""

options="$screen\n$clipboard\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p 'Screenshot Tool' -dmenu -selected-row 1)"
case $chosen in
    $screen)
        scrot 'img_%d-%m-%Y_%H:%M:%S_$wx$h.png' -e 'xclip -selection clipboard -t image/png -i $f ; mv $f $$(xdg-user-dir PICTURES)/screenshots'
        ;;
    $clipboard)
        scrot -se 'xclip -selection clipboard -t image/png -i $f ; rm -f $f'
        ;;
    $area)
        scrot -s 'img_%d-%m-%Y_%H:%M:%S_$wx$h.png' -e 'xclip -selection clipboard -t image/png -i $f ; mv $f $$(xdg-user-dir PICTURES)/screenclips'
        ;;
    $window)
        scrot -u 'img_%d-%m-%Y_%H:%M:%S_$wx$h.png' -e 'xclip -selection clipboard -t image/png -i $f ; mv $f $$(xdg-user-dir PICTURES)/screenclips'
        ;;
esac
