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

### homebrew updates & cleanup
```bash
brew update && brew upgrade && brew cleanup
```

### VIM:
```bash
brew install neovim
```

### Tmuxinator
```bash
brew install tmux # if we don't have already installed
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

