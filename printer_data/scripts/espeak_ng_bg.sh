#!/bin/bash
espeak-ng "$1" -v "$2" -s "$3" --stdout | aplay -q --device=plugdmix &
