" VIM Config file

set nocompatible
filetype off

" setup plugin manager for unix and neovim
if has('nvim')
   if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
      !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   endif
   " windows: ~\AppData\Local\nvim\autoload\plug.vim
else " for unix and vim
   if empty(glob("~/.vim/autoload/plug.vim"))
      !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   endif
   " windows: ~\vimfiles\autoload\plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'lifepillar/vim-mucomplete'
Plug 'autozimu/LanguageClient-neovim', {'branch':'next', 'do':'bash install.sh'}
Plug 'junegunn/fzf'
call plug#end()

let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#completion_delay = 1

set hidden
set runtimepath+='~/.vim/plugged/LanguageClient-neovim'
let g:LanguageClient_serverCommands = {
   \ 'python': ['/usr/bin/pyls'],
   \ 'cpp'   : ['clangd'],
   \ 'ada'   : ['/home/dan/opt/ada-lsp/ada_language_server'],
   \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:ada_standard_types=1
let g:ada_extended_completion=1
let g:ada_omni_with_keywords=1
let g:ada_default_compiler='gnat'

let g:arline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline powerline/nerd symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.whitespace = '☲'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.crypt = '🔒'

let g:airline_theme = 'cool'
let g:airline_extensions = ['quickfix', 'whitespace']

" Spellcheck
" set spelllang=en,sv
" set spell " Dont want this by default
" Language syntax hightlighting
filetype plugin indent on
syntax enable
set background=dark
" set background=light
" colorscheme PaperColor
"colorscheme solarized
colorscheme material
set t_Co=256
highlight Normal ctermbg=NONE guibg=NONE " fix to get transparent background
highlight LineNr ctermfg=60 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
" Completion
set completeopt+=menuone,noselect,preview
set shortmess+=c
set shortmess+=I " no intro msg
set belloff+=ctrlg
set path+=**
set wildmenu
" Searching
" set ignorecase
set smartcase
set showmatch
set matchtime=5
set incsearch
" set hlsearch
" Wrapping
set nowrap
set linebreak
set textwidth=500
set whichwrap+=<,>,h,l
" File handling
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac
set autoread
set autowrite
set noswapfile
set nobackup
set nowritebackup
" Other stuff
set laststatus=2
set mouse=a
if !has("nvim")
  set ttymouse=xterm2
endif
set ttyfast
set mousehide
set tabstop=3
set shiftwidth=3
set expandtab
set smarttab
set softtabstop=3
set backspace=eol,start,indent
set foldmethod=indent
set foldnestmax=3
set foldcolumn=1
set nofoldenable
set autoindent
set smartindent
set scrolljump=5
set scrolloff=3
set ruler
set linespace=0
set pumheight=20
set number
" set relativenumber
set showcmd
" set cursorline
set colorcolumn=80
set splitright
set splitbelow

" Removes trailing spaces
function TrimTrailingWhiteSpace()
  %s/\s*$//
  ''
endfunction

if has("gui_running")
   :set guioptions-=T "no toolbar
   :set guifont=Noto\ Mono\ for\ Powerline\ 10
endif

" will make it so that the completion menu doesnt close
" upon hitting enter
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" emacs style indentation
:nnoremap <Tab> ==
