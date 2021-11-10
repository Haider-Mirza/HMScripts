#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dunst, libnotify, dmenu.
# dunst and libnotify are optional if you remove line 18 and 21

#Questions
input=$(echo -e "" | dmenu -i -p 'My Enter input file to link: ')
output=$(echo -e "" | dmenu -i -p 'My Enter file to link to: ')
yesno=$(echo -e "" | dmenu -i -p 'Sudo? y/n: ')

if [ "$yesno" = "n" ]; then
ln -s ${input} ${output}
notify-send "Symbolic Link Created"
elif [ "$yesno" = "y" ]; then
sudo ln -s "${input}" "${output}"
notify-send "Symbolic Link Created"
else
echo "${yesno} is not either y or n"
fi
