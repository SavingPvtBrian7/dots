#!/bin/bash
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
while true; do xsetroot -name "$(date +"%b %F %r" )";sleep 1s;done &
xrdb ~/dots/.Xresources
xsetroot -solid "#928374"
xset -b
exec dwm
