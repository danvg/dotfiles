# ~/.zshrc

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt correct
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
unsetopt BEEP

bindkey -v
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

alias df='df -h'
alias du='du -h'
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

if type "bat" > /dev/null; then
    alias ccat='bat'
fi

if type "lsd" > /dev/null; then
    alias ls='lsd'
else
    alias ls='ls -hF --color=tty'
fi

alias cls=clear

# fix delete with backspace when switching modes
bindkey "^?" backward-delete-char

alias youtube-dl-music='youtube-dl --extract-audio --audio-format vorbis --audio-quality 3 --output "~/Music/%(title)s.%(ext)s"'
alias set_terminal_color='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
alias browser-sync-firefox='browser-sync start --server --browser "firefox" --files "."'
alias browser-sync-chrome='browser-sync start --server --browser "chromium" --files "."'

alias pacman_update='sudo pacman -Syu'
alias pacman_remove_orphans='sudo pacman -Rns $(pacman -Qqtd)'
alias pacman_clear_cache='sudo pacman -Sc'

alias config-vim="$EDITOR ~/dotfiles/vimrc"
alias config-nvim="$EDITOR ~/dotfiles/nvim/init.vim"
alias config-zsh="$EDITOR ~/dotfiles/zshrc"
alias config-zprofile="$EDITOR ~/dotfiles/zprofile"
alias config-i3="$EDITOR ~/dotfiles/i3.config"
alias config-polybar="$EDITOR ~/dotfiles/polybar.config"
alias config-dunst="$EDITOR ~/dotfiles/dunst.config"
alias config-picom="$EDITOR ~/dotfiles/picom.config"
alias config-mpd="$EDITOR ~/dotfiles/mpd.conf"
alias config-ncmpcpp="$EDITOR ~/dotfiles/ncmpcpp.config"
alias config-alacritty="$EDITOR ~/dotfiles/alacritty.yml"

# Colored man pages: https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/colored-man-pages/colored-man-pages.plugin.zsh
if [[ "$OSTYPE" = solaris* ]]
then
  if [[ ! -x "$HOME/bin/nroff" ]]
  then
    mkdir -p "$HOME/bin"
    cat > "$HOME/bin/nroff" <<EOF
#!/bin/sh
if [ -n "\$_NROFF_U" -a "\$1,\$2,\$3" = "-u0,-Tlp,-man" ]; then
   shift
   exec /usr/bin/nroff -u\$_NROFF_U "\$@"
fi
#-- Some other invocation of nroff
exec /usr/bin/nroff "\$@"
EOF
chmod +x "$HOME/bin/nroff"
  fi
fi

function colored() {
  command env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    PAGER="${commands[less]:-$PAGER}" \
    _NROFF_U=1 \
    PATH="$HOME/bin:$PATH" \
    "$@"
  }

# Colorize man and dman/debman (from debian-goodies)
function man \
  dman \
  debman {
  colored $0 "$@"
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

eval "$(starship init zsh)"
