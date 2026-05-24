# DOTFILES

## Getting started

```
chezmoi init --apply git@github.com:IsidorMedK/dotfiles.git
```
fetch updates from remote-repo with 
```
chezmoi update
```
### Manual install:
This list could be depricated:
- https://www.chezmoi.io/install/#one-line-binary-install
- https://ohmyz.sh/#install
- https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
- https://github.com/zsh-users/zsh-syntax-highlighting.git
- https://github.com/junegunn/fzf#installation

Code could be more up-to-date:
- .chezmoiexternal.toml
- .chezmoiscripts/run_once_before_install-base.sh.tmpl

## Future Work
Disable https://github.com/romkatv/powerlevel10k#instant-prompt?

## Notes

### Test
Running ./scripts/distrobox.sh creates and init/apply into all suported distro, currently under construction.
