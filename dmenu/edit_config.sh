#!/bin/sh

editor="emacsclient -c -a emacs"

declare -a files=(
"$HOME/.config/alacritty/alacritty.yml"
"$HOME/.zshrc"
"$HOME/.aliasrc"
"quit"


)
choice=$(printf '%s\n' "${files[@]}" | dmenu -i -l 20 -p 'Edit: ')

if [[ "$choice" == "quit" ]]; then

    exit 1

elif [ "$choice" ]; then

    file=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    $editor "$file"

else

    exit 1

fi
