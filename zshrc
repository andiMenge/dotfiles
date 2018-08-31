# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/Users/andi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' # case-insensitive matching only if no case-sensitive match was found.
setopt correctall

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Configure Prompt
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  aws           # Amazon Web Services section
  git           # Git section (git_branch + git_status)
  conda         # conda virtualenv section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  line_sep      # Line break
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  
)

SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_CHAR_SYMBOL="> "
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""

# LSCOLORS='exfxcxdxbxGxDxabagacad'
# LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
# GREP_COLOR='37;45'
# GREP_COLORS='mt=37;45'

# PATH
export PATH=$PATH:/usr/local/bin:/Users/andi/Library/Python/2.7/bin:/Users/andi/repos/aws-deploy/bin:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:/Users/andi/go/bin

# ZSH completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Aliases
alias ll='ls -alhG'
alias gs='git status'
alias gf='git fetch'
alias more='less'
alias awsp="source _awsp"
alias gc='git commit'
alias co='code -r .'
alias ecr-login='$(aws ecr get-login --no-include-email --region eu-west-1)'

# ENV Vars
export EDITOR=vim
export AWS_PROFILE=dev
export NVM_DIR="$HOME/.nvm"
export JIRA_API_TOKEN=$(pass misc/jira-token)
export NPM_TOKEN=$(pass misc/moovel-npm-readonly-token)
export LANG=de_DE.UTF-8
export LC_ALL=en_US
export WORDCHARS='*?_-.[]~=&;&%^(){}<>' # enable to jump between words that are delimited by a slash

# NVM
. "/usr/local/opt/nvm/nvm.sh"

# Z
. /usr/local/etc/profile.d/z.sh

# Start the ssh-agent frontend
#eval `keychain --eval --agents ssh id_rsa`

# Autocompletion
source /Users/andi/Library/Python/2.7/bin/aws_zsh_completer.sh
source /Users/andi/repos/moovel-scripts/support/zsh/moovel-completion.zsh

# Auto Suggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# ZSH syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Functions
source ~/shell-functions.sh
