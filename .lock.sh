#!/bin/sh
sleep 2
scrot lockscreen.png -e 'convert -scale 12.5% -scale 800% $f $f'
i3lock -i ~/lockscreen.png
