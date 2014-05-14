# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# zsh plugins
plugins=(git rails ruby mvn rake ssh-agent)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load .localrc for machine specific settings
if [[ -a ~/.localrc ]]; then
  source ~/.localrc
fi

# set vim as the default editor
export EDITOR=vim

# git undo last commit alias
alias git-undo="git reset --soft 'HEAD^'"

# take me to my git home
alias git-home='cd "$(git rev-parse --show-toplevel)"'

# reload .zshrc
alias reload!='. ~/.zshrc'
