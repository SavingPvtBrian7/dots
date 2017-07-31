#!/bin/bash
Trackpoint stuff
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5

# Status bar
while true; do xsetroot -name "$(acpi | sed 's/Battery 0: //g ;
                                            s/isc//g ;
                                            s/harging//g ;
                                            s/remaining//g ;
                                            s/until charged//g ;
                                            s/,//g ;
                                            s/Full//g ;
                                            s/100%/Fully Charged /g ;
                                            s/Unknown 99%/Fully Charged /g')| $(date +"%a %m-%d-%y | %r" )";sleep 1s;done &

# Load preferences
feh --bg-scale ~/Downloads/papes/pixelchurch.png
xrdb ~/dots/.Xresources
xset -b
setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock

exec dwm
# Disable access control
# xhost +SI:localuser:$USER
# 
# Themes, etc
# gnome-settings-daemon &

# Fallback cursor
# xsetroot -cursor_name left_ptr

# Keyboard repeat rate
# xset r rate 200 60

# Start Emacs
# exec dbus-launch --exit-with-session emacs
