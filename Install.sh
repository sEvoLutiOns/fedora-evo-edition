#!/bin/bash

# Update the system
sudo dnf update

# Install Login Manager SDDM
sudo dnf install sddm

sudo systemctl enable sddm

sudo systemctl set-default graphical.target


# Install the configs
sudo dnf install git

mkdir -v ~/GITREPOS

cd ~/GITREPOS

git clone https://github.com/sEvoLutiOns/fedora-evo-edition.git

cd ~/GITREPOS/fedora-evo-edition

cp -ivr ~/GITREPOS/fedora-evo-edition/* ~/


# Copy wallpaper
cd ~/GITREPOS/fedora-evo-edition

cp -iv 001-wallpaper.jpg ~/.config/

# Install the base packages
sudo dnf install bspwm picom kitty firefox rofi sxhkd vim thunar dconf-editor arandr fontawesome-fonts fontawesome-fonts-web nitrogen


# Install my extra fonts
cd ~/Downloads

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip

mkdir -v ~/.fonts

mv ~/Downloads/FiraCode.zip ~/.fonts
mv ~/Downloads/Meslo.zip ~/.fonts

cd ~/.fonts

unzip FiraCode.zip
unzip Meslo.zip


# Install all my software
sudo dnf install keepassxc flameshot
