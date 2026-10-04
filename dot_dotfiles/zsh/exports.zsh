# Editor
export VISUAL="code --wait"
export EDITOR=$VISUAL

# Add custom bin
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Personal
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR:-/run/user/$UID}/proton-pass/ssh-agent.sock"

# Rust, rustup standard install location
[[ -d "$HOME/.cargo/bin" ]] && export PATH="$HOME/.cargo/bin:$PATH"