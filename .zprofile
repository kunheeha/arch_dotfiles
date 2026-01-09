if [[ "$(tty)" = "/dev/tty1" ]]; then
  start-hyprland
fi

if [[ "$XDG_SESSION_TYPE" = "wayland" ]]; then
  export MOZ_ENABLE_WAYLAND=1
fi
