#!/bin/sh

function ff(){

    choice=$(echo "$(find ~/* \( -name '.git' -o -name 'env' -o -wholename '/home/alex/code/misc' \) -prune -false -o -type f)\nquit" | fzf)

    if [[ ! -z "$choice" ]]; then

        if [[ $choice != "quit" ]]; then

            nvim $choice

        fi

    fi

}
