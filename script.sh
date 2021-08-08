#!/bin/sh

sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan

sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32

sudo pacman -S gamemode lib32-gamemode

sudo pacman -S steam lutris

sudo pacman -S linux-zen linux-zen-headers

git clone https://github.com/Jguer/yay.git

cd yay

makepkg -si
