#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dunst, libnotify, dmenu.
# Both are optional if you remove line 21

myDir="$HOME/repos/"

Repos=$(ls "${myDir}")
RepoChoice=$(echo -e "${Repos[@]}\nquit" | dmenu -i -p 'My Repositories: ')
cd "${myDir}""${RepoChoice}"
git add -A --all
commit=$(echo -e " " | dmenu -i -p 'Commit Message: ')
git commit -m "${commit}"
git push
notify-send "Pushed updates to Github"
