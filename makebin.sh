#!/bin/bash

existing_files=`ls $HOME/.local/bin | grep $1`
confirmation="y"

if [ -z "$existing_files" ]; then

    echo "No conflicting binaries ..."

else 

    for i in $existing_files;
    
    do
        if [[ $i = "$1" ]]; then
            
            echo "Conflicting binary in $HOME/.local/bin, proceed anyway? [y/n]: "
            read user_confirmation

        fi
    done
fi

if [[ $user_confirmation = "y" ]]; then 

    echo "Proceeding with installation ..."
    
    cp $2 $HOME/.local/bin/$1
    chmod 744 $HOME/.local/bin/$1

    echo "Installation complete, your new command is: $1 and is hashed: $HOME/.local/bin/$1"


else

    exit 0

fi

exit 0 
