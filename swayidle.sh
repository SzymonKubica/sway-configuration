#!/bin/env bash
exec swayidle -w timeout 270 '~/.config/sway/lock.sh' \
timeout 300 'systemctl suspend' \
before-sleep '~/.config/sway/instant-lock.sh & systemctl suspend;' \
after-resume 'swaymsg "output * dpms on"' &
