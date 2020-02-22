# ~/.zshrc

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=5000

bindkey -v
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

alias df='df -h'
alias du='du -h'
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls -hF --color=tty'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -la'
alias cls=clear
alias ccat=highlight

alias vi=nvim
alias vim=nvim

alias pacman_update='pacman -Syu'
alias pacman_remove_orphans='pacman -Rns $(pacman -Qqtd)'
alias pacman_clear_cache='paccache --remove -k 0'

alias config-nvim='nvim ~/.config/nvim/init.vim'
alias config-zsh='nvim ~/.zshrc'
alias config-ranger='nvim ~/.config/ranger/rc.conf'
alias config-i3='nvim ~/.config/i3/config'
alias config-polybar='nvim ~/.config/polybar/config'
alias config-dunst='nvim ~/.config/dunst/config'
alias config-picom='nvim ~/.config/picom/config'
alias config-mpd='nvim ~/.config/mpd/mpd.conf'
alias config-ncmpcpp='nvim ~/.config/ncmpcpp/config'

export CC=clang
export CXX=clang++
export CXXFLAGS="-std=c++11 -Wall -Wextra -pedantic"

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_DATE_FORMAT=%D{%y-%m-%d}
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time os_icon)
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
