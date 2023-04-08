#!/bin/bash

hostnamectl chassis | while read OUTPUT; do python ~/.config/scripts/set_hyprland_config.py $OUTPUT; done;
