#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|
#
# NOTE: dependencies: dunst, libnotify.
# dunst and libnotify are optional if you remove line 13

program=$(echo "" | dmenu -i -p 'My Enter program to download: ')
sudo pacman -Rs "${program}"
notify-send "Removed ${program}"
