# zsh config
export ZSH="/Users/aa229070/.oh-my-zsh"
ZSH_THEME="apple"
source $ZSH/oh-my-zsh.sh

# load plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf)

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Add homebrew to PATH
export PATH="/opt/homebrew/bin:$PATH"

# Alias python3 to python
alias python=python3

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dotfile git repo alias
alias config='/usr/bin/git --git-dir=/Users/aa229070/.cfg/ --work-tree=/Users/aa229070'

# Ask before deleting files
alias rm='rm -i'

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias git clean='git branch --v | grep "\[gone\]" | awk '{print $1}' | xargs git branch -D'

# IntelliJ Command Line Launcher
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

# Command history config
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"
setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.
export FZF_DEFAULT_COMMAND='rg --hidden -g ""'

# SDKMAN config
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# set JAVA_HOME to be sdkman current java installation
export JAVA_HOME=/Users/aa229070/.sdkman/candidates/java/current
