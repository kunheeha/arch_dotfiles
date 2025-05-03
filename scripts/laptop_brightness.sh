#!/bin/bash

send_brightness_notification ()
{
  BRIGHTNESS=$(brightnessctl g)
  MAX_BRIGHTNESS=$(brightnessctl m)
  BRIGHTNESSLEVEL=$(($BRIGHTNESS * 100 / $MAX_BRIGHTNESS))
  ICON="/usr/share/icons/Faba/48x48/notifications/notification-display-brightness.svg"
  BRIGHTNESSBAR=$(seq -s "━" $(($BRIGHTNESSLEVEL/5)) | sed 's/[0-9]//g')
  notify-send -i "$ICON" "$BRIGHTNESSLEVEL    $BRIGHTNESSBAR" "" -r 1
}

case "$1" in
  up)
    brightnessctl s +$(($(brightnessctl m) * 5 / 100))
    send_brightness_notification
  ;;
  down)
    brightnessctl s $(($(brightnessctl m) * 5 / 100))-
    send_brightness_notification
  ;;
esac
