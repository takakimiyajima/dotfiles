set fish_theme agnoster

set -x LESS -R
set -x LESSOPEN '| /usr/local/bin/src-hilite-lesspipe.sh %s'

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/bzip2/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/bzip2/lib"
set -gx CPPFLAGS "-I/usr/local/opt/bzip2/include"

################ Lang ################
# Node
eval (nodenv init - | source)
#set -x PATH $HOME/.nodenv/bin $PATH

# PHP
set -x PATH /usr/local/opt/php@7.3/bin $PATH

# GO
set -Ux GOPATH $HOME/Git/go
set -U fish_user_paths $fish_user_paths $GOPATH/bin

################ Alias ################
## ls
alias la 'ls -la'

## cd
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'

## git
alias g 'git'
alias ga 'git add'
alias gd 'git diff'
alias gs 'git status'
alias gp 'git push'
alias gb 'git branch'
alias gst 'git status'
alias gco 'git checkout'
alias gf 'git fetch'
alias gc 'git commit'
alias gl 'git log'

## autojump
alias j 'autojump'