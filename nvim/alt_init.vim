" ~/AppData/Local/nvim/init.vim

set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
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
Plug 'mhinz/vim-startify'
call plug#end()

source ~/windows_config/nvim/configs/defaults.vim
source ~/windows_config/nvim/configs/keybindings.vim
source ~/windows_config/nvim/configs/airline.vim
source ~/windows_config/nvim/configs/syntastic.vim
source ~/windows_config/nvim/configs/vim-lsp-cxx-highlight.vim
source ~/windows_config/nvim/configs/pencil.vim
source ~/windows_config/nvim/configs/fzf.vim
source ~/windows_config/nvim/configs/floaterm.vim
source ~/windows_config/nvim/configs/which-key.vim
source ~/windows_config/nvim/configs/startify.vim
source ~/windows_config/nvim/configs/completion-nvim.vim
