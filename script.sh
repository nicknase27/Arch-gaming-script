cd /home/nick/

sudo pacman -Syu


sudo mkdir Documents Downloads Picutres Movies Music
sudo chown nick:nick Documents Downloads Picutres Movies Music

sudo mkdir git && chown nick:nick git
cd git
git clone https://github.com/Jguer/yay.git
cd yay
makepkg -si
cd

yay -S brave-bin spotify-adblock alacritty rofi dmenu discord dunst fish nvidia nvidia-settings flameshot picom nitrogen neovim pfetch compsize polybar bitwarden


cd git
git clone https://github.com/nicknase27/dotfiles-new.git
cd dotfiles-new
cp -r bspwm/ ~/.config && chmod +x bspwmrc
cp -r sxhkd/ ~/.config && chmod +x sxhkdrc
cp -r alacritty/ ~/.config
cp -r fish/ ~/.config
cp -r dunst/ ~/.config
cp -r polybar/ ~/.config
cp -r rofi/ ~/.config
cd

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install lambda

pfetch
