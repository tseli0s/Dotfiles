# Startup commands
neofetch
# Usual shell stuff
export PATH=$HOME/.bin:/usr/local/bin:$PATH:/usr/libexec:$HOME/.local/bin/
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='/usr/bin/vim'
export VIDEODRV='wayland'
# The zsh theme to use. Empty means don't use omz for the theme.
export ZSH_THEME="";
# Setup a prompt (Pure)
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# ZSH Options
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Plugins to use with zsh.
plugins=(git)

# Enable omz.
source $ZSH/oh-my-zsh.sh

# Local configurations, you probably want to change this.

export MANPATH="/usr/local/man:$MANPATH:/usr/share/man"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch amd64"

# Aliases for the shell.

alias doas='sudo -E'
alias la='ls -lhA'
alias ll='ls -Lh'
alias v='vim'
alias q='exit 0'
