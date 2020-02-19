# ~/.config/fish/config.fish

set -U LANG en_US.UTF-8

fish_vi_key_bindings
set fish_emoji_width 2
# set fish_ambiguous_width 2

set -U EDITOR nvim
set -U VISUAL nvim
set -U BROWSER chromium

set -x CC clang
set -x CXX clang++
set -x CXXFLAGS '-std=c++11 -Wall -Wextra -pedantic'

abbr --add cls clear
abbr --add vi nvim
abbr --add vim nvim
abbr --add ccat highlight

abbr --add config-nvim 'nvim ~/.config/nvim/init.vim'
abbr --add config-fish 'nvim ~/.config/fish/config.fish'
abbr --add config-ranger 'nvim ~/.config/ranger/rc.conf'
abbr --add config-i3 'nvim ~/.config/i3/config'
abbr --add config-polybar 'nvim ~/.config/polybar/config'
abbr --add config-picom 'nvim ~/.config/picom/config'

set -gx PATH $PATH ~/.local/ada_language_server
set -gx PATH $PATH ~/.local/bin

function fish_greeting
   # get rid of the greeting
end

set -x RANGER_LOAD_DEFAULT_RC FALSE

abbr youtube-dl-music 'youtube-dl --extract-audio --audio-format vorbis --audio-quality 3 --output "~/Music/%(title)s.%(ext)s"' 
