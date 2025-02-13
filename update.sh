#!/bin/bash

function updateBash {
rm -rf .config/bash
cp -r ~/.config/bash .config
rm .bashrc
cp ~/.bashrc .
echo 'bash config updated'
}

function updateNvim {
rm -rf .config/nvim
cp -r ~/.config/nvim .config/
echo 'nvim config updated'
}

function updateHelix {
rm -rf .config/helix
cp -r ~/.config/helix .config/
echo 'helix config updated'
}

function updatePolybar {
rm -rf .config/polybar
cp -r ~/.config/polybar .config/
echo 'polybar config updated'
}

function updateAlacritty {
rm -rf .config/alacritty
cp -r ~/.config/alacritty .config/
echo 'alacritty config updated'
}

echo '
Choose dir:
1 - all
2 - helix
3 - polybar
'

read key

case "$key" in
  "1"  )
  updateHelix
  updatePolybar
  updateAlacritty
  ;;
  "2"  )
  updateHelix
  ;;
  "3"  )
  updatePolybar
  ;;
  "4"  )
  ;;
  *    )
  echo "fuck you"
  ;;
esac

exit 0

