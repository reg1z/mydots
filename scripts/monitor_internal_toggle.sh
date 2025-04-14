#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 <monitor1> <monitor2>"
    exit 1
fi

MONITOR1=$1
MONITOR2=$2

# Get current monitor status
STATUS=$(hyprctl monitors | grep "$MONITOR1")

if [[ -n "$STATUS" ]]; then
    # Monitor is active, disable it
    hyprctl keyword monitor "$MONITOR1,disable"
else
    # Monitor is not active, re-enable it with desired config
    hyprctl keyword monitor "$MONITOR1,preferred,0x0,1"
    hyprctl keyword monitor "$MONITOR2,preferred,auto,1"
fi
