# ~/.config/fish/config.fish

set -U LANG en_US.UTF-8

fish_vi_key_bindings

set -U EDITOR nvim
set -U VISUAL nvim
set -U BROWSER chromium 

set -x CC clang
set -x CXX clang++
set -x CXXFLAGS '-std=c++11 -Wall -Wextra -pedantic'

set -gx PATH $PATH ~/.local/bin

abbr --add cls clear
