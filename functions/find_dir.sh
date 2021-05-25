#!/bin/sh
function fd() {

    choice=$(echo "$(find ~/* -type d)\nquit" | fzf)
    if [[ $choice != "quit" ]]; then

        nvim $choice

    fi
}
