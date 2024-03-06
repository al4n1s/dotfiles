#!/bin/bash

THEME="mybar"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 0.5
polybar power -c $HOME/polybar/themes/mybar/bars/power.ini &
polybar workspaces -c $HOME/polybar/themes/mybar/bars/workspaces.ini &
polybar main -c $HOME/polybar/themes/mybar/bars/main.ini &
polybar date -c $HOME/polybar/themes/mybar/bars/date.ini &
polybar weather -c $HOME/polybar/themes/mybar/bars/weather.ini &
polybar utils -c $HOME/polybar/themes/mybar/bars/utils.ini &

