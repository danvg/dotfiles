# ~/.zprofile

export TERM=xterm-256color
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export PAGER=less

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

if [[ -z "$LANGUAGE" ]]; then
    export LANG='en_US.UTF-8'
fi

if [ -d "$HOME/.local/bin" ] ; then
   PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/opt/GNAT/2020/bin" ]; then
   PATH="$PATH:$HOME/opt/GNAT/2020/bin"
fi

export CC=clang
export CXX=clang++
export CXXFLAGS="-std=c++11 -Wall -Wextra -pedantic"

export RANGER_LOAD_DEFAULT_RC=FALSE
export QT_QPA_PLATFORMTHEME=qt5ct
export TOOLS_INCLUDE='~/repos/TOOLS_INCLUDE'

eval $(dircolors ~/.dir_colors)
