cd /home/nick/

sudo pacman -Syu
su nick 

sudo mkdir Documents Downloads Picutres Movies Music
sudo chown nick:nick Documents Downloads Picutres Movies Music

sudo mkdir git && chown nick:nick git
cd git
git clone https://github.com/Jguer/yay.git
cd yay
makepkg -si
cd

sudo pacman -S alacritty rofi dmenu discord dunst fish nvidia nvidia-settings flameshot nitrogen neovim compsize polybar bitwarden
yay -S brave-bin spotify-adblock pfetch picom-pijulius-git


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

sudo chsh 

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install lambda

pfetch
