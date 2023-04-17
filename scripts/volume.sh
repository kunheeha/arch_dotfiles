#!/bin/bash

send_volume_notification ()
{
  VOLUME=$(pamixer --get-volume)
  VOLUMEBAR=$(seq -s "━" $(($VOLUME/5)) | sed 's/[0-9]//g')
  if [[ "$VOLUME" -le "30" ]]; then
    icon="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg"
  elif [[ "$VOLUME" -le "70" ]]; then
    icon="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-medium.svg"
  else
    icon="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg"
  fi
  notify-send -i "$icon" "$VOLUMEBAR" "$VOLUME" -r 1
}

case "$1" in
  up)
    pamixer -u && pamixer -i 5
    send_volume_notification
  ;;
  down)
    pamixer -u && pamixer -d 5
    send_volume_notification
  ;;
  mute)
    if [[ $(pamixer --get-mute) == true ]]; then
      pamixer -u
      send_volume_notification
    else
      pamixer -m
      notify-send -i "/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-muted.svg" "Muted" -r 1
    fi
  ;;
esac
