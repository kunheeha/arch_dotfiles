if [[ "$(tty)" = "/dev/tty1" ]]; then
  Hyprland
fi

if [[ "$XDG_SESSION_TYPE" = "wayland" ]]; then
  export MOZ_ENABLE_WAYLAND=1
fi
