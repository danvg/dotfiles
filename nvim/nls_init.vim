set nocompatible
filetype off

" let $RTP=expand('~/windows_config/nvim')
" let $RC=$RTP.'/min_init.vim'
" set runtimepath=$RTP,$VIMRUNTIME,$RTP.'/after'
" set packpath=$RTP,$VIMRUNTIME,$RTP.'/after'

call plug#begin("~/windows_config/nvim/plugged")
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
call plug#end()

source ~/windows_config/nvim/configs/defaults.vim
source ~/windows_config/nvim/configs/keybindings.vim
source ~/windows_config/nvim/configs/airline.vim
source ~/windows_config/nvim/configs/floaterm.vim
source ~/windows_config/nvim/configs/nerdtree.vim
source ~/windows_config/nvim/configs/nerdtree-git-plugin.vim
source ~/windows_config/nvim/configs/min_lspconfig.vim
