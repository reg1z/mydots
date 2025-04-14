#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <monitor>"
    exit 1
fi

MONITOR=$1

# Get current monitor status
STATUS=$(hyprctl monitors | grep "$MONITOR")

if [[ -n "$STATUS" ]]; then
    # Monitor is active, disable it
    hyprctl keyword monitor "$MONITOR,disable"
else
    # Monitor is not active, re-enable it with desired config
    hyprctl keyword monitor "$MONITOR,preferred,auto,1"
fi
