#!/bin/bash

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

# 
