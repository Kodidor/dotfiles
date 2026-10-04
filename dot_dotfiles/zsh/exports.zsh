# Editor
export VISUAL="code --wait"
export EDITOR=$VISUAL

# Better defaults
# export LANG=en_US.UTF-8

# Add custom bin
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Personal
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR:-/run/user/$UID}/proton-pass/ssh-agent.sock"
