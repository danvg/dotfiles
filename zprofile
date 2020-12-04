# ~/.zprofile

export LANG=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export PAGER=less

if [ -d "$HOME/.local/bin" ] ; then
   PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/opt/GNAT/2020/bin" ]; then
   PATH="$PATH:$HOME/opt/GNAT/2020/bin"
fi

eval $(dircolors ~/.dir_colors)

export CC=clang
export CXX=clang++
export CXXFLAGS="-std=c++11 -Wall -Wextra -pedantic"

export RANGER_LOAD_DEFAULT_RC=FALSE
export QT_QPA_PLATFORMTHEME=qt5ct
