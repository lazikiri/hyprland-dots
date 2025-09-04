#!/bin/bash

if ! which pacman >/dev/null; then
  echo "Your not on an Arch or an Arch based distro, you can not use these dotfiles."
  exit 1
fi

if ! pacman -Q base-devel >/dev/null; then
    pacman -S base-devel
    echo "Installed base-devel."
fi

if ! git >/dev/null; then
    pacman -S git
    echo "Installed Git."
fi

if ! which paru >/dev/null; then
    rm -rf /tmp/paru
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg -si
    echo "Paru installed."
  fi

paru -S hyprland alacritty waybar ttf-cousine-nerd python-pywal16-git pavucontrol pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber xdg-desktop-portal-hyprland dunst hyprpolkitagent fish fastfetch eza --needed --noconfirm

git clone https://codeberg.org/reverend/hyprland-dots /tmp/hyprland-dots
mv /tmp/hyprland-dots/.config/* "$HOME/.config/"

chsh -s /usr/bin/fish

echo "Please reboot your system."
