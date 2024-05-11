#!/bin/bash
cd 

sudo pacman -S bspwm sxhkd rofi polybar stow\
 kitty fish feh variety ttf-fira-code \
 ttf-jetbrains-mono git wget curl 

git clone https://github.com/nicknase27/dotfiles.git
cd dotfiles
stow .