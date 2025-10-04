#!/usr/bin/env bash

killall quickshell
quickshell & disown
hyprctl reload
