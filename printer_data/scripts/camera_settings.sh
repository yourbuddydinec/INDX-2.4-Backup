#!/bin/bash

v4l2-ctl -d /dev/v4l/by-id/"$1" -c "$2"="$3"