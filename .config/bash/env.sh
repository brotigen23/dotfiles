# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Настройка ASDF
export PATH="$HOME/.asdf/shims:$PATH"

# GOPATH
GOPATH="$(asdf where golang)"
export PATH="$GOPATH/bin:$PATH"
