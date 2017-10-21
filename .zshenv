# Terminal and shell preferencces
export TERMINAL=kitty
export VISUAL=nvim
export EDITOR="$VISUAL"

# Modify PATH variable
## Add user specific bin directory
export PATH="${HOME}/.bin:/usr/local/bin:${PATH}"
## Add rustup folder
export PATH="$HOME/.cargo/bin:$PATH"
