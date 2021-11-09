#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dunst, libnotify, dmenu.
# Both are optional if you remove line 16

myDir="$HOME/repos/HM-Scripts/"

Scripts=$(ls "${myDir}")
ScriptChoice=$(echo -e "${Scripts[@]}\nquit" | dmenu -i -p 'Scripts: ')
sudo cp "${ScriptChoice}" /usr/bin/"${ScriptChoice%.*}"
notify-send "Copied ${ScriptChoice} to /usr/bin/"
