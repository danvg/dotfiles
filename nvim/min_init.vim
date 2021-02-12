" ~/.config/nvim/init.vim

set nocompatible
filetype off

call plug#begin('~/dotfiles/nvim/plugged')
Plug 'sainnhe/gruvbox-material'             " global theme
Plug 'shinchu/lightline-gruvbox.vim'        " modeline theme
Plug 'neovim/nvim-lspconfig'                " lsp configurations
Plug 'nvim-lua/completion-nvim'             " completion engine
Plug 'hrsh7th/vim-vsnip'                    " vscode style snippets
Plug 'hrsh7th/vim-vsnip-integ'              " above integration with lsp client
Plug 'honza/vim-snippets'                   " snippet database
Plug 'itchyny/lightline.vim'                " modeline
Plug 'voldikss/vim-floaterm'                " floating window terminal
Plug 'tpope/vim-commentary'                 " gcc to comment
Plug 'tpope/vim-vinegar'                    " file manager
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'                    " git gutter info
Plug 'tweekmonster/startuptime.vim'         " measure startup time
call plug#end()

source ~/dotfiles/nvim/configs/defaults.vim
source ~/dotfiles/nvim/configs/keybindings.vim
source ~/dotfiles/nvim/configs/lightline.vim
source ~/dotfiles/nvim/configs/floaterm.vim
source ~/dotfiles/nvim/configs/nativelsp.vim
