#!/bin/bash

if [[ "$1" == "down" ]]; then
  brightnessctl  -d smc::kbd_backlight s 10%-
elif [[ "$1" == "up" ]]; then
  brightnessctl -d smc::kbd_backlight s +10%
fi

brightnessctl -d smc::kbd_backlight g | awk '{print int($1/255*100)}' | while read OUTPUT; do notify-send "Keyboard Brighntess: $OUTPUT" -r 1; done;
