#!/bin/sh
function ff(){

    choice=$(echo "$(find ~/*)\nquit" | fzf)
    if [[ $choice != "quit" ]]; then

        nvim $choice

    fi

}
