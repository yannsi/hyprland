#!/bin/bash
set -e


git clone https://github.com/yannsi/hyprland.git
echo -e "\nパッケージのインストールと設定を行います。\nパスワードを入力してください。\n"
sudo chmod +x $HOME/hyprland/test.sh

cd $HOME/hyprland/.config

sudo pacman -S --needed - < pkglist_pacman_hypr.txt

cp -r hypr waybar starship.toml $HOME/.config

cd .. && cp .kannsuu.txt $HOME/

starship preset tokyo-night -o ~/.config/starship.toml

cd && git clone https://aur.archlinux.org/cava.git
cd $HOME/cava/ && makepkg -si && cd && rm -rf cava
cd $HOME/hyprland/.config
cp -r cava $HOME/.config && cd

git clone https://aur.archlinux.org/flameshot-git.git
cd $HOME/flameshot-git/ && makepkg -si
cd && rm -rf flameshot-git

git clone https://aur.archlinux.org/hyprpicker-git.git
cd $HOME/hyprpicker-git && makepkg -si
cd && rm -rf hyprpicker-git

git clone https://aur.archlinux.org/hyprshot.git
cd $HOME/hyprshot && makepkg -si
cd && rm -rf hyprshot

#echo -e "GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" >> /etc/environment

echo ". .kannsuu.txt" >> .bashrc

pipx install yewtube

echo "終了しました。再起動してください。"

