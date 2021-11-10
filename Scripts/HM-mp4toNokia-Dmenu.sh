#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|
#
# NOTE: dependencies: dunst, libnotify, ffmpeg, Dmenu
# dunst and libnotify are optional if you remove line 21

mydir='/home/haider/ffmpeg/'
loop='y'

while [ "$loop" = "y" ]
do
input=$(echo -e "" | dmenu -i -p 'My Enter input file: ')
ffmpeg -i "${mydir}${input}.mp4" -r 10 -y -vf scale=352x288 -b:v 500k -ar 8000 -ac 1 "${mydir}${input}.3gp"
notify-send "Convertion to 3gp completed"
loop=$(echo -e "" | dmenu -i -p 'Again? y/n: ')
done
