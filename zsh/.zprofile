if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    # Hint Electron apps to use Wayland.
    export ELECTRON_OZONE_PLATFORM_HINT=wayland
    # Flameshow requirest this to work, maybe some other applications as well.
    XDG_CURRENT_DESKTOP=Sway
    exec sway
fi
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
# Created by `pipx` on 2024-12-30 16:21:26
export PATH="$PATH:/home/kazhuu/.local/bin"
