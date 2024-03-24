#!/bin/bash

git clone https://github.com/yannsi/hyprland.git
cd $HOME/hyprland/.config && printf "password: "
read password
echo "$password" | sudo -S pacman -S --needed - < pkglist_pacman_hypr.txt && cp -r cava hypr waybar starship.toml $HOME/.config
cd && git clone https://aur.archlinux.org/cava.git
cd $HOME/cava/ && makepkg -si && cd && rm -rf cava
echo "設定が完了しました。再起動してください。"

