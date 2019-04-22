alias ls='ls --color=auto --ignore="ntuser*" --ignore="NTUSER*"'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git related alias
# alias for managing dotfiles in home directory using 'dot' as alias for git
alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'
__git_complete dot _git
