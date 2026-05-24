
#fuzzy full-text search
fgr() {
  rg --line-number --no-heading --color=always "$@" | \
    fzf --ansi | \
    cut -d: -f1,2
}

#Select and open file
fe() {
  local file

  file=$(
    fd --type f --hidden --exclude .git |
    fzf --preview 'bat --style=numbers --color=always {} 2>/dev/null'
  )

  [[ -n "$file" ]] && eval "$EDITOR \"$file\""
}

fbr() {
  local branch
  echo "Fetching remote branches..."
  git fetch --all --prune --quiet
  branch=$(
    git for-each-ref \
      --sort=-committerdate \
      --format='%(refname:short)' refs/heads refs/remotes | \
    grep -v '^origin/HEAD' | \
    fzf \
      --layout=reverse \
      --preview "git log --oneline --decorate --color=always -20 {1}"
  )

  [[ -z "$branch" ]] && return

  git switch "${branch#origin/}"
}

fssh() {
  local host

  host=$(
    grep '^Host ' ~/.ssh/config | \
    awk '{print $2}' | \
    grep -v '\*' | \
    fzf --height 40% --reverse
  )

  [[ -n "$host" ]] && ssh "$host"
}