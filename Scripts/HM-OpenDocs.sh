#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dunst, libnotify, Emacs, Emacsclient, dmenu.
# dunst and libnotify are optional if you remove line 24

# Variables:
myDir="$HOME/repos/Documents/"

# giving dmenu some directories:
dirOptions=$(cd ${myDir} && /bin/ls -d */ | cut -d " " -f 1 )
dirChoice=$(echo -e "${dirOptions[@]}\nquit" | dmenu -i -p 'My directories: ')

# These If statments opens your directory in dmenu again if your result is not quit:
if [ "$dirChoice" == "quit" ]; then
    echo "Program terminated."
elif [ "$dirChoice" == "$dirChoice" ]; then
    fileOptions=$(cd ${myDir}${dirChoice} && /bin/ls -Ap | cut -d " " -f 1 | grep -v /)
    fileChoice=$(echo -e "${fileOptions[@]}" | dmenu -i -p 'Edit this file: ')
    notify-send "Opening ${fileChoice}"
    exec emacsclient -c "${myDir}""${dirChoice}""${fileChoice}"
fi
