laptop_display_showing=$(swaymsg -t get_outputs | grep 'eDP-1' | wc -l)
if [[ "$laptop_display_showing" == 1 ]]; then
  swaylock \
    --image "/home/szymon/.config/sway/hexagons.png" \
    --hide-keyboard-layout \
    --clock \
    --datestr "%a, %d.%m.%Y" \
    --text-color ffffff \
    --indicator-radius 80 \
    --indicator-thickness 5 \
    --inside-color 00000050 \
    --line-color 00000000 \
    --ring-ver-color 00ffffff \
    --text-ver-color 00000000 \
    --inside-ver-color 00000000 \
    --line-uses-inside \
    --separator-color 00000000 \
    --bs-hl-color 44444495 \
    --key-hl-color af0000 \
    --ring-color ffffff \
    --ring-clear-color 44444495 \
    --inside-clear-color 00000050 \
    --text-clear-color ffffff \
    --text-caps-lock-color ffffff \
    --line-wrong-color 00000000 \
    --text-wrong-color ffffff \
    --inside-wrong-color 00000050 \
    --ring-wrong-color af0000 \
    --daemonize
fi
