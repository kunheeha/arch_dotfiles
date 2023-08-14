#!/bin/bash

CURRENT_ROT=$(hyprctl -j monitors | jq '.[].transform')

if [[ "$CURRENT_ROT" == "3" ]]; then
  hyprctl keyword monitor ,preferred,auto,auto
elif [[ "$CURRENT_ROT" == "0" ]]; then
  hyprctl keyword monitor ,preferred,auto,auto,transform,3
fi
