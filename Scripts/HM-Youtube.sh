#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: Dependencies: libnotify, dunst, dmenu.
# Dunst and libnotify are optional if you remove line 

video=$(echo -e "" | dmenu -i -p 'My Enter input file to link: ')
mpv ${video}
