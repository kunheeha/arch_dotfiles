#!/bin/bash

send_brightness_notification ()
{
  BRIGHTNESS=$(brightnessctl g)
  ICON="/usr/share/icons/Faba/48x48/notifications/notification-display-brightness.svg"
  BRIGHTNESSBAR=$(seq -s "━" $(($BRIGHTNESS/5)) | sed 's/[0-9]//g')
  notify-send -i "$ICON" "$BRIGHTNESS    $BRIGHTNESSBAR" "" -r 1
}

case "$1" in
  up)
    brightnessctl s +5
    send_brightness_notification
  ;;
  down)
    brightnessctl s 5-
    send_brightness_notification
  ;;
esac
