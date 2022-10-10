cd /home/nick/

sudo pacman -Syu
sudo pacman -S base-devel

sudo mkdir Documents Downloads Picutres Movies Music
sudo chown nick:nick Documents Downloads Picutres Movies Music

sudo mkdir git
sudo chown nick:nick git
cd git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd

sudo pacman -S bspwm sxhkd alacritty rofi dmenu discord dunst fish nvidia nvidia-settings flameshot nitrogen neovim compsize polybar bitwarden
yay -S brave-bin spotify-adblock pfetch picom-pijulius-git


cd git
git clone https://github.com/nicknase27/dotfiles-new.git
cd dotfiles-new
cp -r bspwm/ ~/.config 
cp -r sxhkd/ ~/.config 
cp -r alacritty/ ~/.config
cp -r fish/ ~/.config
cp -r dunst/ ~/.config
#cp -r polybar/ ~/.config ## requires too much work to ship "just like that"
cp -r rofi/ ~/.config
cd ~/.config/bspwm/ && sudo chmod +x bspwmrc
cd ..
cd sxhkd/ && sudo chmod +x sxhkdrc
cd

sudo chsh 

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fish
omf install lambda

pfetch
