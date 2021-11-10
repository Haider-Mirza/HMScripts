#!/usr/bin/env bash
# _   _ __  __
#| | | |  \/  |
#| |_| | |\/| | Made by Haider Mirza
#|  _  | |  | | My Github: https://github.com/Ha1derMirza
#|_| |_|_|  |_|

# NOTE: dependencies: dmenu.

# Making an Array:
declare -A configs

# Listing programs:
configs[qute-conf]="$HOME/repos/.dotfiles/.config/qutebrowser/config.py"
configs[qute-quick]="$HOME/repos/.dotfiles/.config/qutebrowser/quickmarks"
configs[emacs-conf]="$HOME/repos/.dotfiles/.config/doom/README.org"
configs[emacs-pkg]="$HOME/repos/.dotfiles/.config/doom/packages.el"
configs[emacs-init]="$HOME/repos/.dotfiles/.config/doom/init.el"
configs[xmonad]="$HOME/repos/.dotfiles/.xmonad/README.org"
configs[xmobar]="$HOME/repos/.dotfiles/.config/xmobar/doom-one-xmobarrc"
configs[dunst]="$HOME/repos/.dotfiles/.config/dunst/dunstrc"
configs[alacritty]="$HOME/repos/.dotfiles/.config/alacritty/alacritty.yml"
configs[conky]="$HOME/repos/.dotfiles/.config/conky/xmonad/doom-one-01.conkyrc"
configs[bash]="$HOME/.bashrc"
configs[fish]="$HOME/repos/.dotfiles/.config/fish/config.fish"

# Where the magic happens:
selectedconf=$(printf '%s\n' "${!configs[@]}" | dmenu -l 20 -p "Select config: ")
if [ "$selectedconf" ]; then
link=$(printf '%s\n' "${configs["$selectedconf"]}")
notify-send "Opening '$link'"
exec emacsclient -c "$link"
else
echo "Program Terminated" && exit 0
fi
