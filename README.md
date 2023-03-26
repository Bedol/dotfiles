# Dotfiles

### Chezmoi
Current version of my dotfiles uses [Chezmoi](https://www.chezmoi.io/) to manage my dotfiles.

To apply all my dotfiles just call chezmoi command:

```bash
chezmoi apply -v
```

OR if you want only tmux config etc.:
```bash
chezmoi apply ~/.tmux.conf
```

### Unix Shell:
 I stil using the ZSH shell with plugins. It should be installed in macOS and any linux distro.
 * [Oh My ZSH!](https://ohmyz.sh/)
 ```bash
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 ```

 * autosuggesions plugin
 ```bash
 git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
 ```
 * zsh-syntax-highlighting plugin
 ```bash
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
 ```
 * zsh-fast-syntax-highlighting plugin
 ```bash
 git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
 ```
 * zsh-autocomplete plugin
 ```bash
 git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
 ```

### Fonts:
Download a `SauceCodePro` font from [https://www.nerdfonts.com/](Nerd Font page).

Then we need to unzip files.
```bash
unzip SauceCodePro.zip -d SauceCodePro
```
The next step is copy `*.ttf` fonts into folder where we have fonts.

On the Linux:
```bash
cd SauceCodePro
cp -vf *.ttf ~/.local/share/fonts
```

On the macOS:
```bash
cd SauceCodePro
cp -vf *.ttf ~/Library/Fonts
```

## macOS
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

