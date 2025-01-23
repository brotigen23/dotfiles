#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

# prompt config
[[ -f $HOME/.config/bash/prompt.sh ]] && . $HOME/.config/bash/prompt.sh && PS1="${PROMPT}"

