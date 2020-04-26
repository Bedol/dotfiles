# Dotfiles

Added dotfiles:
* NeoVim
* ZSH
* Tmux
* Tmuxinator
* Spacevim

### Unix Shell:
 * zsh
 * [Oh My ZSH!](https://ohmyz.sh/) 

### Fonts:
[nerd-font](https://github.com/ryanoasis/nerd-fonts)
[SauceCodePro Nerd Font Mono](https://spacevim.org/documentation/#font)

### ZSH Dependencies:
[Spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)

Install zsh-autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### VIM:
[Spacevim](https://spacevim.org/)


### Tmuxinator
```bash
brew install tmuxinator
```

### GIT Aliases
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
```
