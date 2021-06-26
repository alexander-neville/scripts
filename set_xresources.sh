#!/usr/bin/env bash

# replace xresources colors
cat $HOME/.Xresources.d/themes_available/${1} > $HOME/.Xresources.d/colours
