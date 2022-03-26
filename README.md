# dotfiles
My mac settings

## Procedure

```sh
# Install xcode
$ xcode-select install

# Install homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# set dotfiles
$ sh dotfiles.sh

# set Brewfile
$ brew bundle

# Change shell
$ chsh -s /usr/local/bin/fish
$ chsh -s /bin/zsh # (/usr/local/bin/zsh)

### Wanna use fish
$ curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
$ fisher install oh-my-fish/theme-bobthefish
# Install font
$ git clone https://github.com/powerline/fonts.git
$ cd fonts/
$ sh ./install.sh
```


