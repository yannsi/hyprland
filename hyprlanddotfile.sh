#!/bin/bash

git clone https://github.com/yannsi/hyprland.git
echo -e "\n次のコマンドを実行してください。\n\ncd $HOME/hyprland/.config\nsudo pacman -S --needed - < pkglist_pacman_hypr.txt\ncp -r cava hypr waybar starship.toml $HOME/.config\ncd .. && cp .kannsuu.txt $HOME\nstarship preset tokyo-night -o ~/.config/starship.toml\ncd && git clone https://aur.archlinux.org/cava.git\ncd $HOME/cava/ && makepkg -si\ncd && rm -rf cava\n"
