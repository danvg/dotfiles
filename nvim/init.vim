" ~/.config/nvim/init.vim

set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/site/plugged')
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
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'justinmk/vim-sneak'
" Plug 'airblade/vim-rooter' // sets working dir based on git as root
" Plug 'cdelledonne/vim-cmake'
call plug#end()

source ~/dotfiles/nvim/configs/defaults.vim
source ~/dotfiles/nvim/configs/keybindings.vim
source ~/dotfiles/nvim/configs/airline.vim
source ~/dotfiles/nvim/configs/vim-lsp-cxx-highlight.vim
source ~/dotfiles/nvim/configs/fzf.vim
source ~/dotfiles/nvim/configs/floaterm.vim
source ~/dotfiles/nvim/configs/syntastic.vim
source ~/dotfiles/nvim/configs/vim-commentary
source ~/dotfiles/nvim/configs/pencil.vim
source ~/dotfiles/nvim/configs/startify.vim
source ~/dotfiles/nvim/configs/nerdtree
source ~/dotfiles/nvim/configs/which-key.vim
source ~/dotfiles/nvim/configs/vim-sneak
source ~/dotfiles/nvim/configs/coc.vim
