#!/bin/bash

#v4l2-ctl -d /dev/v4l/by-id/"$1" -c "$2"="$3"

set -e # exit if error

MODE="$1"
DEVICE="$2"

if [ "$MODE" == "get" ]; then
    v4l2-ctl -d "$DEVICE" --list-ctrls
    exit 0
fi

SETTING="$3"
AMOUNT="$4"

if [ -z "$DEVICE" ] || [ -z "$SETTING" ] || [ -z "$AMOUNT" ]; then
	echo "COMMAND NOT PROPERLY FORMED"
	echo "EXAMPLE:"
	echo "camera_settings.sh set <device> <setting> <amount>"
    exit 1
fi

v4l2-ctl -d "$DEVICE" --set-ctrl="${SETTING}=${AMOUNT}"