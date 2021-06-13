#!/bin/sh

function f.(){

    choice=$(echo "$(find ./* \( -name '.git' -o -wholename '/home/alex/code/misc' \) -prune -false -o -type f)\nquit" | fzf)
    if [[ $choice != "quit" ]]; then

        nvim $choice

    fi

}
