#!/bin/bash

TERMINAL_BG="$(ls ~/Downloads/Anime_Minimal | shuf -n 1)"

BG_COMMAND="BackgroundImageFile=/home/abhimx/Downloads/Anime_Minimal/$TERMINAL_BG"

echo "$BG_COMMAND"

sed -i "/BackgroundImageFile/c\ $BG_COMMAND" ~/.config/xfce4/terminal/terminalrc
