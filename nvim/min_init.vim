" ~/.config/nvim/init.vim

set nocompatible
filetype off

let $PLUGGED_PATH=expand("~/dotfiles/nvim/plugged")
let $CONFIG_PATH=expand("~/dotfiles/nvim/configs")
let $SESSION_PATH=expand("~/dotfiles/nvim/session")
let $UNDODIR_PATH=expand("~/dotfiles/nvim/undodir")

let g:python3_host_prog=expand("/usr/bin/python")

call plug#begin($PLUGGED_PATH)
Plug 'sainnhe/gruvbox-material'             " global theme
Plug 'shinchu/lightline-gruvbox.vim'        " modeline theme
Plug 'neovim/nvim-lspconfig'                " lsp configurations
Plug 'nvim-lua/completion-nvim'             " completion engine
Plug 'steelsojka/completion-buffers'        " buffer completion source
Plug 'SirVer/ultisnips'                     " snippets
Plug 'honza/vim-snippets'                   " snippet database
Plug 'itchyny/lightline.vim'                " modeline
Plug 'voldikss/vim-floaterm'                " floating window terminal
Plug 'tpope/vim-commentary'                 " gcc to comment/uncomment
Plug 'tpope/vim-vinegar'                    " file manager
Plug 'jiangmiao/auto-pairs'                 " for deelimeter pairs
Plug 'mhinz/vim-signify'                    " git gutter info
Plug 'tweekmonster/startuptime.vim'         " measure startup time
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

exec "source " . $CONFIG_PATH . "/defaults.vim"
exec "source " . $CONFIG_PATH . "/keybindings.vim"
exec "source " . $CONFIG_PATH . "/lightline.vim"
exec "source " . $CONFIG_PATH . "/floaterm.vim"
exec "source " . $CONFIG_PATH . "/nativelsp.vim"
exec "source " . $CONFIG_PATH . "/fzf.vim"
