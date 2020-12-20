" ~/.config/nvim/init.vim

set nocompatible
filetype off

call plug#begin('~/dotfiles/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
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

source ~/dotfiles/nvim/configs/defaults.vim
source ~/dotfiles/nvim/configs/keybindings.vim
source ~/dotfiles/nvim/configs/airline.vim
source ~/dotfiles/nvim/configs/floaterm.vim
source ~/dotfiles/nvim/configs/nerdtree.vim
source ~/dotfiles/nvim/configs/nerdtree-git-plugin.vim
source ~/dotfiles/nvim/configs/vim-lsp-cxx-highlight.vim
source ~/dotfiles/nvim/configs/syntastic.vim
source ~/dotfiles/nvim/configs/fzf.vim
source ~/dotfiles/nvim/configs/coc.vim
