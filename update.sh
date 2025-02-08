#!/bin/bash
#Bash
rm -rf .config/bash
cp -r ~/.config/bash .config
rm .bashrc
cp ~/.bashrc .

# Nvim
rm -rf .config/nvim
cp -r ~/.config/nvim .config


# Helix
rm -rf .config/helix
cp -r ~/.config/helix

# Polybar
rm -rf .config/polybar
cp -r ~/.config/polybar
