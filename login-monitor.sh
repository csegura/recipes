#!/bin/bash

# set variable with the command we need to evaluate
my_laptop_external_monitor=$(xrandr --query | grep 'DP-1-1 connected')

if [ -n "$my_laptop_external_monitor" ]; then
  autorandr external
else
	autorandr laptop
fi
