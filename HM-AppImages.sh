#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: Dependencies: libnotify, dunst, dmenu.
# Dunst and libnotify are optional if you remove line 23

# Variables:
myDir="$HOME/Appimages/"

# giving dmenu some directories:
dirOptions=$(ls "${myDir}")
AppChoice=$(echo -e "${dirOptions[@]}\nquit" | dmenu -i -p 'My directories: ')

# These If statments opens your directory in dmenu again if your result is not quit:
if [ "$AppChoice" = "quit" ]; then
    echo "Program terminated."
elif [ "$AppChoice" = "$AppChoice" ]; then
    cd "${myDir}"
    notify-send "Opening ${AppChoice}"
    ./"${AppChoice}"
fi
