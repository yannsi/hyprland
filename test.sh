#!/bin/bash


git clone https://github.com/yannsi/hyprland.git
echo -e "\nパッケージのインストールと設定を行います。\nパスワードを入力してください。\n"
sudo chmod +x $HOME/hyprland/test.sh
sudo chmod +x $HOME/hyprland/.config/waybar/scripts/*.sh

cd $HOME/hyprland/.config

sudo pacman -S --needed - < pkglist_pacman_hypr.txt &
wait

cp -r hypr waybar starship.toml $HOME/.config

cd .. && cp .kannsuu.txt $HOME/

starship preset tokyo-night -o $HOME/.config/starship.toml

cd && git clone https://aur.archlinux.org/cava.git
cd $HOME/cava/ && yes | makepkg -si &
wait
cd && rm -rf cava
cd $HOME/hyprland/.config
cp -r cava $HOME/.config && cd

git clone https://aur.archlinux.org/flameshot-git.git
cd $HOME/flameshot-git/ && yes | makepkg -si &
wait
cd && rm -rf flameshot-git

git clone https://aur.archlinux.org/hyprpicker-git.git
cd $HOME/hyprpicker-git && yes | makepkg -si &
wait
cd && rm -rf hyprpicker-git

git clone https://aur.archlinux.org/hyprshot.git
cd $HOME/hyprshot && yes | makepkg -si &
wait
cd && rm -rf hyprshot

git clone https://aur.archlinux.org/cbonsai-git.git
cd $HOME/cbonsai-git && yes | makepkg -si &
wait
cd && rm -rf cbonsai-git

git clone https://aur.archlinux.org/boxes.git
cd $HOME/boxes && yes | makepkg -si &
wait
cd && rm -rf boxes

#echo -e "GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" >> /etc/environment

echo ". .kannsuu.txt" >> .bashrc

pipx install yewtube &
wait

rm -rf $HOME/hyprland

echo -e "\n設定が終了しました。再起動してください。"

