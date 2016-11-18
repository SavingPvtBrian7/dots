#!/bin/sh
scrot lockscreen.png -e 'convert -scale 12.5% -scale 800% $f $f && mv $f /tmp'
i3lock -i /tmp/lockscreen.png
