# DOTFILES

## Getting started

```
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply Kodidor
```
or with chezmoi already installed
```
chezmoi init --apply git@github.com:Kodidor/dotfiles.git
```
fetch updates from remote-repo with 
```
chezmoi update
```
### Manual install:
This list could be deprecated:
- https://www.chezmoi.io/install/#one-line-binary-install
- https://ohmyz.sh/#install
- https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
- https://github.com/zsh-users/zsh-syntax-highlighting.git
- https://github.com/junegunn/fzf#installation

Code could be more up-to-date:
- .chezmoiexternal.toml
- .chezmoiscripts/run_once_before_install-base.sh.tmpl

