alias sourcerc="source ~/.zshrc"
alias c="clear"

# logs
alias jctl="journalctl -p 3 -xb"
alias logerr="journalctl -p 3 -xb"

if [[ -f /etc/os-release ]]; then
  source /etc/os-release

  if [[ "$ID" == "arch" || "$ID_LIKE" == *"arch"* ]]; then
    alias rmpkg="sudo pacman -Rsn"
    alias cleanch="sudo pacman -Scc"
    alias update="sudo pacman -Syu"
    alias cleanup='sudo pacman -Rsn $(pacman -Qtdq)'
  elif [[ "$ID" == "ubuntu" || "$ID_LIKE" == *"debian"* ]]; then
    alias update='sudo apt update && sudo apt upgrade'
    alias cleanup="apt autoremove"
  fi
fi

