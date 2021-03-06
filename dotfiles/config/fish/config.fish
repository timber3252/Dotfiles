#   __ _     _
#  / _(_)___| |__
# | |_| / __| '_ \
# |  _| \__ \ | | |
# |_| |_|___/_| |_|
#
# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# ============================================================ 
# Header
# ============================================================ 

# locale
# export LC_ALL="en_SG.UTF-8"

# editor
export EDITOR=nvim
export VISUAL=nvim

# env
set -x PATH $PATH $HOME/Scripts

# gnupg: configure pinentry to use the correct tty
export GPG_TTY=(tty)

# ranger: do not load default rc.conf
set -g -x RANGER_LOAD_DEFAULT_RC FALSE

# ============================================================ 
# Abbr
# ============================================================

# directory abbr
alias h    'cd $HOME'
alias ha   'cd $HOME/Archives'
alias hb   'cd $HOME/Repo/blog'
alias hc   'cd $HOME/.config'
alias hd   'cd $HOME/Documents'
alias hdot 'cd $HOME/Dotfiles'
alias hdl  'cd $HOME/Downloads'
alias hm   'cd $HOME/Music'
alias hn   'cd $HOME/Notes'
alias hp   'cd $HOME/Pictures'
alias hpub 'cd $HOME/Public'
alias hr   'cd $HOME/Repo'
alias hs   'cd $HOME/Scripts'
alias hv   'cd $HOME/Videos'

# user abbr 
alias c        'clear'
alias cdiff    'colordiff'
alias cs       'cowsay'
alias dotdrop  '$HOME/Dotfiles/dotdrop.sh --cfg=$HOME/Dotfiles/config.yaml'
alias fishp    'fish --private'
alias fzf      'fzf --preview \'head -100 {}\''
alias ipy      'ipython'
alias l        'ls -la'
alias nv       'nvim'
alias pq       'proxychains -q'
alias ra       'ranger'
alias rp       'realpath'
alias s        'neofetch'
alias sra      'sudo -E ranger'
# alias sudo     'sudo -E'
alias untar    'tar -zxvf'

# git abbr
alias gst      'git status'
alias gad      'git add .'
alias gcm      'git commit -m'
alias gp       'git push'

