# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# zsh plugins
plugins=(git rails ruby mvn rake)

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

# reload .zshrc
alias reload!='. ~/.zshrc'
