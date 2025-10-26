# ~/.bashrc

# Выходим, если не интерактивный shell
[[ $- != *i* ]] && return

# Настройка pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Настройка Rust (cargo)
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Настройка ASDF
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Настройка NVM (если используешь Node.js)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Упрощённый prompt
PS1='\u@\h:\w\$ '

# Полезные алиасы (опционально)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ldotfiles='/usr/local/bin/lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# Автодополнение (если установлено)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
