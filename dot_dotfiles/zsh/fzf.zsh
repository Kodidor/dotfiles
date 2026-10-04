export FZF_DEFAULT_OPTS='
  --height 40%
  --layout=reverse
  --border
  --inline-info
'

# Use fd if available (faster than find)
if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# Preview files (if bat exists), apparently on Deb-systems bat is called batcat
if command -v bat >/dev/null 2>&1; then
  BATCMD="bat"
elif command -v batcat >/dev/null 2>&1; then
  BATCMD="batcat"
fi
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {}'"

if command -v tree >/dev/null 2>&1; then
  export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
fi