#!/bin/sh

sudo pacman -S base-devel --noconfirm

sudo pacman -Sy --noconfirm

sudo pacman -Syu --noconfirm

sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan --noconfirm

sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32 --noconfirm

sudo pacman -S gamemode lib32-gamemode --noconfirm

sudo pacman -S steam lutris --noconfirm

sudo pacman -S linux-lts linux-lts-headers --noconfirm

git clone https://github.com/Jguer/yay.git

cd yay

makepkg -si --noconfirm
