#!/bin/bash

list=$(cat $HOME/.config/waybar/scripts/Radiostation.txt)

radio=$(zenity --list --title="Radio Station" --text="チャンネルを選択\n" --print-column=2 --column="Channels" --column="URL" $list --height=300 --width=200) || exit 1


###################################
if [ "$radio" = "https://radiko.jp/#!/live/RN2" ]; then
streamlink -p mpv 'https://radiko.jp/#!/live/RN2' best
else
mpv "$radio"
fi
exit 0

