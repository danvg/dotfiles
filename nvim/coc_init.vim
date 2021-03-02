" ~/.config/nvim/init.vim

set nocompatible
filetype off

let $PLUGGED_PATH=expand("~/dotfiles/nvim/plugged")
let $CONFIG_PATH=expand("~/dotfiles/nvim/configs")
let $SESSION_PATH=expand("~/dotfiles/nvim/session")
let $UNDODIR_PATH=expand("~/dotfiles/nvim/undodir")

let g:python3_host_prog=expand("/usr/bin/python")

call plug#begin($PLUGGED_PATH)
Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'frazrepo/vim-rainbow'
Plug 'Yggdroot/indentLine'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

exec "source " . $CONFIG_PATH . "/defaults.vim"
exec "source " . $CONFIG_PATH . "/keybindings.vim"
exec "source " . $CONFIG_PATH . "/airline.vim"
exec "source " . $CONFIG_PATH . "/floaterm.vim"
exec "source " . $CONFIG_PATH . "/nerdtree.vim"
exec "source " . $CONFIG_PATH . "/nerdtree-git-plugin.vim"
exec "source " . $CONFIG_PATH . "/vim-lsp-cxx-highlight.vim"
exec "source " . $CONFIG_PATH . "/syntastic.vim"
exec "source " . $CONFIG_PATH . "/fzf.vim"
exec "source " . $CONFIG_PATH . "/coc.vim"
