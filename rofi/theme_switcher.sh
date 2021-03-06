#!/bin/bash

# Variables
rofi_command="rofi -theme $HOME/.config/rofi/themes/theme_switcher.rasi"
theme_dir="$HOME/.Xresources.d/themes_available/"
theme_file="$HOME/.Xresources.d/colours"

# Options
theme_1="Nord"
theme_2="Gruvbox"
theme_3="Dracula"
theme_4="Marine"
theme_5="Forest"
theme_6="Solarized"
theme_7="OneDark"
theme_8="Pink"
theme_9="Blue"
theme_10="Purple"

# Variable passed to rofi
options="$theme_1\n$theme_2\n$theme_3\n$theme_4\n$theme_5\n$theme_6\n$theme_7\n$theme_8\n$theme_9\n$theme_10"

chosen="$(echo -e "$options" | $rofi_command -p "Available Themes" -dmenu -selected-row 0)"
case $chosen in
    $theme_1)
        cat $theme_dir/nord > $theme_file
        ;;
    $theme_2)
        cat $theme_dir/gruvbox > $theme_file
        ;;
    $theme_3)
        cat $theme_dir/dracula > $theme_file
        ;;
    $theme_4)
        cat $theme_dir/marine > $theme_file
        ;;
    $theme_5)
        cat $theme_dir/forest > $theme_file
        ;;
    $theme_6)
        cat $theme_dir/solarized > $theme_file
        ;;
    $theme_7)
        cat $theme_dir/onedark > $theme_file
        ;;
    $theme_8)
        cat $theme_dir/pink > $theme_file
        ;;
    $theme_9)
        cat $theme_dir/blue > $theme_file
        ;;
    $theme_10)
        cat $theme_dir/purple > $theme_file
        ;;
esac

xrdb ~/.Xresources
deploy_xresources.sh
