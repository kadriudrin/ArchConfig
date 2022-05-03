#!/bin/bash

readarray -t mons <<< "$(xrandr | grep " connected " | awk '{ print$1 }')"

echo ${#mons[@]}
