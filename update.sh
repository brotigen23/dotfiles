#!/bin/bash
#Bash
rm -rf .config/bash
cp -r ~/.config/bash .config
rm .bashrc
cp ~/.bashrc .

# Nvim
rm -rf .config/nvim
cp -r ~/.config/nvim .config

