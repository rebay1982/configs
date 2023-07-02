#!/usr/bin/bash
FILENAME="screenshot-`date +%F-%T`"
grim -g "$(slurp)" ~/Screenshots/$FILENAME.png
