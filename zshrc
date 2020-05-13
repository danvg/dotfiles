# ~/.zshrc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# alias vi=nvim
# alias vim=nvim

# fix delete with backspace when switching modes
bindkey "^?" backward-delete-char

alias youtube-dl-music='youtube-dl --extract-audio --audio-format vorbis --audio-quality 3 --output "~/Music/%(title)s.%(ext)s"'
alias set_terminal_color='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
alias mount_gdrive="rclone mount mygoogledrive: ~/drive"
alias browser-sync-firefox="browser-sync start --server --browser "firefox" --files ".""
alias browser-sync-chrome="browser-sync start --server --browser "chromium" --files ".""

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

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_DATE_FORMAT=%D{%y-%m-%d}
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time os_icon)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
