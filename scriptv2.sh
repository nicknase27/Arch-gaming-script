#!/bin/bash

### Sets directories
home_dir=$HOME
current_dir=$(pwd)

### Check if youre in the home directory
if [ "$current_dir" != "$home_dir" ]; then
    printf "%s%sThe script must be executed from the HOME directory.%s\n"
    exit 1
fi


dependencies=(base-devel libx11 libxft libxinerama freetype2 fontconfig rustup dunst lsd vifm \
    ttf-jetbrains-mono ttf-jetbrains-mono-nerd ueberzug python-pywal imagemagick zsh)

is_installed() {
    pacman -Qi "$1" &> /dev/null
    return $?
}


### Checks if required packages are installed
printf "%s%sChecking for required packages...%s\n" 
for package in "${dependencies[@]}"; do
    if ! is_installed "$package"; then
        if sudo pacman -S "$package" --noconfirm >/dev/null 2>> Error.log; then
            printf "%s%s%s %shas been installed succesfully.%s\n"
            sleep 1
        else
            printf "%s%s%s %shas not been installed correctly. See %sRiceError.log %sfor more details.%s\n" 
            sleep 1
        fi
    else
        printf '%s%s%s %sis already installed on your system!%s\n'
        sleep 1
    fi
done

### clone and compile my dwm, dmenu, st and slstatus configs
mkdir .suckless git
cd .suckless
git clone git@github.com:nicknase27/dwm.git
git clone git@github.com:nicknase27/dmenu.git
git clone git@github.com:nicknase27/st.git
git clone git@github.com:nicknase27/slstatus.git

compile() {
    rm -rf config.h
    sudo make clean install
}

compile_dwm() {
    cd dwm 
    compile
    cd ..
}

compile_dmenu() {
    cd dmenu 
    compile
    cd ..
}

compile_slstatus() {
    cd  slstatus 
    compile
    cd ..
}

compile_st() {
    cd st 
    compile
    cd ..
}
compile_dwm
compile_dmenu
compile_slstatus
compile_st

### Install paru, pfetch and zsh
rustup default stable
cd $home_dir/git

git clone https://aur.archlinux.org/paru.git
cd paru 
makepkg -si
cd $home_dir

paru -S pfetch-rs

chsh -s /usr/bin/zsh

zsh
pfetch
