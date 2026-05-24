# Path to Oh My Zsh
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting #Last
)

source $ZSH/oh-my-zsh.sh

eval "$(fzf --zsh)"