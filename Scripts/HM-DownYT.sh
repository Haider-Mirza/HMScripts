#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|
#
# NOTE: dependencies: dunst, libnotify, yt-dlb
# dunst and libnotify are optional if you remove line 16

mydir='/home/haider/ffmpeg/'

input=$(echo -e "" | dmenu -i -p 'My Enter input file: ')
output=$(echo -e "" | dmenu -i -p 'My Enter output file name: ')
yt-dlp -o ${mydir}"${output}" "${input}"
notify-send "Downloaded ${input}"
