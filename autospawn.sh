
swaymsg exec exec -- alacritty --hold -e zsh -c neofetch &&
sleep 0.1 &&
swaymsg exec exec -- alacritty --hold -e zsh -c ncmpcpp &&
sleep 0.1 &&
swaymsg exec exec -- alacritty --hold -e zsh -c btop &&
sleep 0.1 &&
swaymsg focus left &&
swaymsg focus left &&
swaymsg focus left &&
clear &&
swaymsg move scratchpad &&
swaymsg layout toggle split &&
swaymsg focus down &&
swaymsg focus down &&
swaymsg move right



