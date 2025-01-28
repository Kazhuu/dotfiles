if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
  # Hint Electron apps to use Wayland.
  export ELECTRON_OZONE_PLATFORM_HINT=wayland

  # All following environment variables are needed for flameshot to work in
  # Wayland properly. These might not be needed in the future.
  # https://github.com/flameshot-org/flameshot/blob/master/docs/Sway%20and%20wlroots%20support.md
  export SDL_VIDEODRIVER=wayland
  export _JAVA_AWT_WM_NONREPARENTING=1
  # Having this causes TeamViewer to crash.
  # export QT_QPA_PLATFORM=wayland
  export XDG_CURRENT_DESKTOP=sway
  export XDG_SESSION_DESKTOP=sway

  exec sway > ~/sway.log 2>&1
fi
