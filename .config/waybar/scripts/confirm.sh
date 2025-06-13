#!/bin/bash
ACTION=$1
LOCKFILE="/tmp/confirm_$(echo -n $ACTION | md5sum | awk '{print $1}')"

if [ -f "$LOCKFILE" ]; then
    rm "$LOCKFILE"
    $ACTION
else
    touch "$LOCKFILE"
    notify-send "Click again to confirm." -t 5000 -w
    rm "$LOCKFILE"
fi
