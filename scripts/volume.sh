#!/bin/bash

send_volume_notification ()
{
  VOLUME=$(pamixer --get-volume)
  if [[ "$VOLUME" -lt "10" ]]; then
    VOLUMEBAR=""
    if [[ "$VOLUME" -eq "0" ]]; then
      ICON="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-muted.svg"
    else
      ICON="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg"
    fi
  else
    VOLUMEBAR=$(seq -s "━" $(($VOLUME/5)) | sed 's/[0-9]//g')
    if [[ "$VOLUME" -le "30" ]]; then
      ICON="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg"
    elif [[ "$VOLUME" -le "70" ]]; then
      ICON="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-medium.svg"
    else
      ICON="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg"
    fi
  fi
  notify-send -i "$ICON" "$VOLUME    $VOLUMEBAR" "" -r 1
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
