#!/bin/bash

if [[ $(pamixer --get-mute) == true ]]; then pamixer -u && notify-send "Unmuted" -r 1; else pamixer -m && notify-send "Muted" -r 1; fi
