#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|
#
# NOTE: dependencies: dunst, libnotify, ffmpeg
# dunst and libnotify are optional if you remove line 21

mydir='/home/haider/ffmpeg/'
loop='y'

while [ "$loop" == "y" ]
do 
read -r -p "Enter input file: " input
if [ "$input" == "quit" ]; then
    echo "Program terminated."
else 
ffmpeg -i "${mydir}${input}.mp4" -r 10 -y -vf scale=352x288 -b:v 500k -ar 8000 -ac 1 "${mydir}${input}.3gp"
notify-send "Convertion to 3gp completed"
read -r -p "Again? y/n " loop
fi
done
