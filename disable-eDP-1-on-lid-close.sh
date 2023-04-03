outputs_num=$(swaymsg -t get_outputs | grep '"type": "output"' | wc -l)
echo $outputs_num

if [[ $((outputs_num)) -ge 2 ]]
then
  swaymsg output eDP-1 disable
fi
