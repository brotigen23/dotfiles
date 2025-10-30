# ~/.bashrc

# Выходим, если не интерактивный shell
[[ $- != *i* ]] && return

. $HOME/.config/bash/env.sh
. $HOME/.config/bash/alias.sh

. $HOME/.config/bash/colors.sh
. $HOME/.config/bash/prompt.sh

PS1=$PROMPT


# Автодополнение (если установлено)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
