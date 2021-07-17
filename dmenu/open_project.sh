#!/bin/sh
projects=()
# editor="emacsclient -c -a 'emacs'"
editor="emacs"

for folder in ~/code/*; do

    projects+=("$(basename $folder)")

done

projects+=("quit")

# for i in "${projects[@]}";
# do
#      echo $i
# done

choice=$(printf '%s\n' "${projects[@]}" | dmenu -i -l 20 -p 'Open Project: ')

if [[ "$choice" == "quit" ]]; then

    exit 1

elif [ "$choice" ]; then

    path="$HOME/code/$choice"
    # command="$editor --eval '(dired \"$path\")'"
    exec $editor $path

else

    exit 1

fi
