#!/bin/bash

WALLDIR=~/Wallpapers

if [[ "$1" == 'nord' ]]; then
  WALLDIR=$WALLDIR/Nord
elif [[ "$1" == 'mocha' ]]; then
  WALLDIR=$WALLDIR/Catppuccin
else
  WALLDIR=$(find $WALLDIR -maxdepth 1 -type d | tail -n 2 | sort -R | tail -n 1)
fi

WALLPAPER=$(ls $WALLDIR/ | sort -R | tail -n 1)
swww img $WALLDIR/$WALLPAPER -t random
