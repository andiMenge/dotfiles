# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep notify INC_APPEND_HISTORY
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/Users/andi/.zshrc'

# Configure FPATH
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit
# End of lines added by compinstall

#zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' # case-insensitive matching only if no case-sensitive match was found.
zstyle ':completion:*:*:make:*' tag-order 'targets'
setopt correct

# Set Spaceship ZSH as a prompt
source "$(brew --prefix)/opt/spaceship/spaceship.zsh"

# LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
# GREP_COLOR='37;45'
# GREP_COLORS='mt=37;45'

# PATH
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:/Users/andi/go/bin:/usr/local/aws/bin:/opt/homebrew/opt/postgresql@11/bin

# Aliases
alias ll='ls -alhG'
alias gs='git status'
alias gf='git fetch'
alias more='less'
alias awsp="source _awsp"
alias gc='git commit'
alias co='code -r .'
alias b='buku --suggest'
alias python='/usr/local/bin/python3'

# ENV Vars
export EDITOR=vim
export LANG=de_DE.UTF-8
export LC_ALL=en_US.UTF-8
export WORDCHARS='*?_-.[]~=&;&%^(){}<>' # enable to jump between words that are delimited by a slash

# AWS
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
#export AWS_PROFILE=

# Z
. /opt/homebrew/etc/profile.d/z.sh

# Start the ssh-agent frontend
# eval `keychain --eval --agents ssh id_rsa`

# Autocompletion
source <(kubectl completion zsh)
# Auto Suggestion
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# ZSH syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Functions
source ~/shell-functions.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

