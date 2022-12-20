
current_time=$(date +'%Y-%m-%d %I:%M:%S %p')

#############
# Commands
#############

# Battery or charger
battery_charge=$(upower --show-info $(upower --enumerate | grep 'BAT') | grep "percentage" | awk '{print $2}')
battery_status=$(upower --show-info $(upower --enumerate | grep 'BAT') | grep "state" | awk '{print $2}')

if [ $battery_status = "discharging" ];
then
    battery_pluggedin='⚠'
else
    battery_pluggedin='⚡'
fi

<<comment
 "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 15
        },
        "bat":"BAT1",
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-discharging": " {capacity}%",
        "format-alt": "{icon} {time}",
        "format-icons": ["", "", "", "", ""]
    },
comment

layout=$(swaymsg -r -t get_inputs | awk '/1:1:AT_Translated_Set_2_keyboard/;/xkb_active_layout_name/' | grep -A1 '\b1:1:AT_Translated_Set_2_keyboard\b' | grep "xkb_active_layout_name" | awk -F '"' '{print $4}')
battery_status=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}')

echo "|   $battery_status | $layout | $current_time"
