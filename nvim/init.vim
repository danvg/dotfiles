" ~/.config/nvim/init.vim

set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-colors-pencil'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
" Plug 'mhinz/vim-startify'
Plug 'cdelledonne/vim-cmake'
call plug#end()

source ~/.config/nvim/configs/defaults.vim
source ~/.config/nvim/configs/keybindings.vim
source ~/.config/nvim/configs/airline.vim
source ~/.config/nvim/configs/syntastic.vim
source ~/.config/nvim/configs/vim-lsp-cxx-highlight.vim
source ~/.config/nvim/configs/coc.vim
source ~/.config/nvim/configs/pencil.vim
source ~/.config/nvim/configs/fzf.vim
source ~/.config/nvim/configs/floaterm.vim
source ~/.config/nvim/configs/which-key.vim
" source ~/.config/nvim/configs/startify.vim
