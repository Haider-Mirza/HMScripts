#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dunst, libnotify, dmenu.
# Both dunst and libnotify are optional if you remove line 19

# Make sure all of my HM-Scripts are in the /usr/bin directory.

# giving dmenu some directories:
dirOptions=$(ls /usr/bin/ | grep "HM")
dirChoice=$(echo -e "${dirOptions[@]}\nquit" | dmenu -i -p 'My directories: ')

# These If statments opens your directory in dmenu again if your result is not quit:
if [ "$dirChoice" == "quit" ]; then
    echo "Program terminated."
elif [ "$dirChoice" == "$dirChoice" ]; then
    notify-send "Opening ${dirChoice}"
    ${dirChoice}
fi
