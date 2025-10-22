#!/usr/bin/env bash

if [ "$(whoami)" = "root" ]; then
  echo "Do not run as root"
  exit 1
fi

if ! which pacman >/dev/null; then
  echo "Your not on an Arch or an Arch based distro, you can not use this install script."
  exit 1
fi

if ! pacman -Q base-devel >/dev/null; then
  sudo pacman -S base-devel
fi

if ! git >/dev/null; then
  sudo pacman -S git
fi

git clone https://github.com/lazikiri/hyprland-dots "$HOME/.config/"

if ! which paru >/dev/null; then
  rm -rf /tmp/paru
  git clone https://aur.archlinux.org/paru.git /tmp/paru
  cd /tmp/paru
  makepkg -si
fi

paru -S --needed --noconfirm hyprland quickshell-git ttf-firacode-nerd pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber dunst hyprpolkitagent rofi swww xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xwaylandvideobridge hyprshot cliphist wl-clipboard wiremix yazi hyprlock adw-gtk-theme

echo "Please reboot your system."
