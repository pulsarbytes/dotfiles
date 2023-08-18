# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Set up the prompt
autoload -Uz promptinit
promptinit
# prompt adam2

# History
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_SPACE
setopt histignorealldups sharehistory
set -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
set -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
set -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/usr/bin/zsh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# GPG
export GPG_TTY=$(tty)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# command-not-found
source /etc/zsh_command_not_found

# Bindings
if [ -f ~/dotfiles/bindings ]; then
    source ~/dotfiles/bindings
fi

# Private aliases
if [ -f ~/dotfiles_private/aliases ]; then
    source ~/dotfiles_private/aliases
fi

# Aliases
if [ -f ~/dotfiles/aliases ]; then
    source ~/dotfiles/aliases
fi

# Private variables
if [ -f ~/dotfiles_private/variables ]; then
    source ~/dotfiles_private/variables
fi

# Variables
if [ -f ~/dotfiles/variables ]; then
    source ~/dotfiles/variables
fi

# Private functions
if [ -f ~/dotfiles_private/functions ]; then
    source ~/dotfiles_private/functions
fi

# Functions
if [ -f ~/dotfiles/functions ]; then
    source ~/dotfiles/functions
fi

# Plugins
if [ -f ~/dotfiles/plugins ]; then
    source ~/dotfiles/plugins
fi

# Prompt
if [ -f ~/dotfiles/prompt ]; then
    source ~/dotfiles/prompt
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yannis/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yannis/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yannis/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yannis/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
