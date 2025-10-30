GOPATH="$(asdf where golang)"

export PATH="$GOPATH/bin:$PATH"

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

