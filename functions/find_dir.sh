#!/bin/sh
function fd() {

    choice=$(echo "$(find ~/* \( -name '.git' -o -wholename '/home/alex/code/misc' \) -prune -false -o -type d)\nquit" | fzf)
    if [[ $choice != "quit" ]]; then

        cd $choice

    fi
}
