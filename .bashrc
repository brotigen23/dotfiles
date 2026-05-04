# ~/.bashrc

# Выходим, если не интерактивный shell
[[ $- != *i* ]] && return

# Old but gold
# . $HOME/.config/bash/env.sh
# . $HOME/.config/bash/alias.sh
# . $HOME/.config/bash/colors.sh
# . $HOME/.config/bash/prompt.sh
# PS1=$PROMPT
. $HOME/.bash_aliases


# Автодополнение (если установлено)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Starship prompt
#eval "$(starship init bash)"

export PATH="$PATH:$HOME/.local/bin"
. "$HOME/.cargo/env"
. "/usr/share/nvm/init-nvm.sh"
