# env
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# プロンプト
# 1行表示
# PROMPT="%~ %# "
# 2行表示
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "


# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob


# Alias ####################################
alias la='ls -al'
alias ll='ls -l'

## cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

## git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gl='git log'

# Lang  ##################################

eval "$(rbenv init -)"
eval "$(zoxide init zsh)"

# mysql
export PATH=/usr/local/opt/mysql@5.7/bin:$PATH

if [[ -s “${ZDOTDIR:-$HOME}/.zprezto/init.zsh” ]]; then
  source “${ZDOTDIR:-$HOME}/.zprezto/init.zsh”
fi
# Customize to your needs...
fpath=(path/to/zsh-completions/src $fpath)
# zsh-completionsのリロード設定
autoload -U compinit && compinit -u
# alias
export VOLTA_HOME=“$HOME/.volta”
export PATH=“$VOLTA_HOME/bin:$PATH”
