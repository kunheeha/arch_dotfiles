#!/bin/bash

CURRENT_ROT=$(hyprctl -j monitors | jq '.[].transform')

if [[ "$CURRENT_ROT" == "3" ]]; then
  hyprctl keyword monitor ,preferred,auto,1.2
elif [[ "$CURRENT_ROT" == "0" ]]; then
  hyprctl keyword monitor ,preferred,auto,1.2,transform,3
fi
