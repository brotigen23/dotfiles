#!/usr/bin/bash

PM=pacman

PM_CMD='-S'

# lazydocker

PACKAGES='
  alacritty
  helix
  lazygit
  github-cli

  obsidian

  telegram
'
echo ${PACKAGES}

sudo ${PM} ${PM_CMD} ${PACKAGES}
