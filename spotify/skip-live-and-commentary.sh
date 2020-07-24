#!/bin/bash
# From https://github.com/Peyphour/spotify-skip-live/blob/master/spotify-skip
while [ 1 ]; do
    contains=`playerctl metadata xesam:title | grep -i "live\|commentary"`
    if [ -n "$contains" ]; then
        playerctl next
    fi
    sleep 1
done
