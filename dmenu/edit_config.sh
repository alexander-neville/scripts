#!/bin/sh

editor="emacsclient -c -a emacs"

declare -a files=(
".config/alacritty/alacritty.yml"
".config/qtile/config.py"
".xmonad/xmonad.hs"
".xmonad/xmobarrc"
".config/doom/config.el"
".config/nvim/init.vim"
".zshrc"
".zshenv"
".aliasrc"
".xinitrc"
"quit"


)
choice=$(printf '%s\n' "${files[@]}" | dmenu -i -l 20 -p 'Edit: ')

if [[ "$choice" == "quit" ]]; then

    exit 1

elif [ "$choice" ]; then

    file=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    path="$HOME/$file"
    $editor "$file"

else

    exit 1

fi
