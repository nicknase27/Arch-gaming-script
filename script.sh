#!/bin/sh

sudo pacman -S base-devel --noconfirm

sudo pacman -Sy --noconfirm

sudo pacman -Syu --noconfirm

sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan --noconfirm

sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32 --noconfirm

sudo pacman -S flameshot i3-gaps neofetch --noconfirm

sudo pacman -S gamemode lib32-gamemode --noconfirm

sudo pacman -S steam lutris discord-canary ntfs-3g --noconfirm

git clone https://github.com/Jguer/yay.git

cd yay

makepkg -si --noconfirm

yay -S spotify-adblock multimc5  oh-my-zsh-git freetube grapejuice-git cava unimatrix --noconfirm

wget https://raw.githubusercontent.com/endeavouros-team/endeavouros-i3wm-setup/main/setup.sh