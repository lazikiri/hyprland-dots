#!/bin/bash


killall waybar
waybar &
hyprctl reload
