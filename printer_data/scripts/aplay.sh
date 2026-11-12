#!/bin/bash

aplay -q "$1" -D plugdmix
disown