# ~/.zprofile

export LANG=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=chromium
export PAGER=less

if [ -d "$HOME/.local/bin" ] ; then
   PATH="$HOME/.local/bin:$PATH"
fi

eval $(dircolors ~/.dir_colors)

export CC=clang
export CXX=clang++
export CXXFLAGS="-std=c++11 -Wall -Wextra -pedantic"

export RANGER_LOAD_DEFAULT_RC=FALSE
