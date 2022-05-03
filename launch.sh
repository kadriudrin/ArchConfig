#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ $($HOME/.config/bspwm/checkdual.sh) == 1 ] ; then
	MONITOR=eDP1 polybar mainbar &
else 
	MONITOR=eDP1 polybar mainbar &
	MONITOR=HDMI2 polybar secondarybar &
fi
