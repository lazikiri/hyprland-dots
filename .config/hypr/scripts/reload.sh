#!/usr/bin/env bash

killall waybar
waybar &
hyprctl reload
