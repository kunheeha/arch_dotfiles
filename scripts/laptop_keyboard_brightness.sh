#!/bin/bash

send_kb_brightness_notification ()
{
  KBBRIGHTNESS=$(brightnessctl -d smc::kbd_backlight g | awk '{print int($1/255*100)}')
  ICON="/usr/share/icons/Faba/48x48/notifications/notification-keyboard-brightness.svg"
  KBBRIGHTNESSBAR=$(seq -s "━" $(($KBBRIGHTNESS/5)) | sed 's/[0-9]//g')
  notify-send -i "$ICON" "$KBBRIGHTNESS    $KBBRIGHTNESSBAR" "" -r 1
}

if [[ "$1" == "down" ]]; then
  brightnessctl  -d smc::kbd_backlight s 10%-
elif [[ "$1" == "up" ]]; then
  brightnessctl -d smc::kbd_backlight s +10%
fi

send_kb_brightness_notification
