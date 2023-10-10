#!/bin/bash

terminator -e 'gum confirm "フォルダを共有します" && bash $HOME/.config/waybar/scripts/server.sh || exit 1'

