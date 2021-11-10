#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dmenu.

# Making an Array:
declare -A configs

# Listing documents:
configs[todo]="$HOME/repos/Documents/Home/TODO.org"
configs[git]="$HOME/repos/Documents/Home/Git.org"
configs[homework]="$HOME/repos/Documents/Home/Homework.org"
configs[reminders]="$HOME/repos/Documents/Home/Reminders.org"
configs[school]="$HOME/repos/Documents/Home/School"

# Where the magic happens:
selectedconf=$(printf '%s\n' "${!configs[@]}" | dmenu -l 20 -p "Select config: ")
if [ "$selectedconf" ]; then
link=$(printf '%s\n' "${configs["$selectedconf"]}")
exec emacsclient -c "$link"
else
echo "Program Terminated" && exit 0
fi
