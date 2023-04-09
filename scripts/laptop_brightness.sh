#!/bin/bash

if [[ "$1" == "down" ]]; then
  brightnessctl s 10-
elif [[ "$1" == "up" ]]; then
  brightnessctl s +10
fi

brightnessctl g | while read OUTPUT; do notify-send "Brighntess: $OUTPUT" -r 1; done;
