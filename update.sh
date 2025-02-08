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

echo '
Choose dir:
1 - all
2 - bash
3 - helix
4 - polybar
фыв 
'

read key

case "$key" in
  "1"  )

  ;;
  "2"  )
  ;;
  "3"  )
  updateHelix
  ;;
  "4"  )
  updatePolybar
  ;;
  *    )

  ;;
esac

exit 0

