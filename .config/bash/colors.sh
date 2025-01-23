#\e[ - start color scheme
#\[\e[{35};{8};{color}m\]
PREFIX='\[\e['
POSTFIX='m\]'

# codes
green_code='92'
purple_code='95'
reset_code='0'

# colors
GREEN="${PREFIX}${purple_code}${POSTFIX}"

PURPLE="${PREFIX}${green_code}${POSTFIX}"

RESET="${PREFIX}${reset_code}${POSTFIX}"
