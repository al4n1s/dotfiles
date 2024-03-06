#!/bin/bash

if ip a | grep -qi 'tun0' && ip a show dev tun0 | grep -q 'state UNKNOWN'; then
    IP=$(ip a show dev tun0 | grep 'inet ' | awk '{print $2}' | cut -d "/" -f 1 )
    echo "%{F#00e676}  $IP %{F-}"
elif ip a | grep -qiE 'nebula1' && ip a show dev nebula1 | grep -q 'state UNKNOWN'; then
    IP=$(ip a show dev nebula1 | grep 'inet ' | awk '{print $2}' | cut -d "/" -f 1 )
    echo "%{F#00e676}  $IP %{F-}"
else
    echo "%{F#fff}  Vpn %{F-}"
fi
