filetype plugin indent on
syntax on

" Path setting for the find command
set path=$PWD/**

" Syntax and colorization
set termguicolors
set background=dark
colorscheme gruvbox-material
highlight Comment cterm=italic gui=italic

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set backspace=eol,start,indent
set autoindent
set smartindent

" Spellcheck
set spelllang=en
set spell

" Searching
set nohlsearch
set ignorecase
set smartcase
set showmatch
set matchtime=5
set incsearch

" Completion
set completeopt+=menuone,noselect,noinsert
set shortmess+=c
set shortmess+=I
set belloff+=ctrlg
set noerrorbells visualbell t_vb=
set wildmenu
set updatetime=300

" Wrapping
set nowrap
set linebreak
set textwidth=500
set whichwrap+=<,>,[,],h,l

" Folding
set foldmethod=indent
set foldnestmax=3
set foldcolumn=1
set nofoldenable

" Mouse
set mouse=a
set mousehide

" Scrolling
set scrolljump=5
set scrolloff=3

" Splitting
set splitright
set splitbelow

" Show
set laststatus=2
set ruler
set linespace=0
set pumheight=20
set showcmd
set number
set cursorline
set colorcolumn=79
set showtabline=2
set signcolumn=yes
set list
set listchars=tab:┆·,trail:·,precedes:,extends:

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

" Clipboard
" set clipboard=unnamedplus

" Undo history
set undofile
set undodir=~/dotfiles/nvim/undodir

" Removes trailing spaces
function! s:TrimTrailingSpace()
  %s/\s*$//
  ''
endfunction

" Text mode
function! s:InitTextMode()
  setl textwidth=0
  setl wrapmargin=0
  setl wrap
  setl formatoptions+=t
  setl linebreak
  echomsg 'Setting indentation for Text mode'
endfunction

" Cpp Google indentation
function! s:InitCppMode()
  setl tabstop=2
  setl shiftwidth=2
  setl softtabstop=2
  setl expandtab
  echomsg 'Setting indentation for CPP mode'
endfunction

" Sets the terminal background to transparent
function! s:SetTransparentTermBG()
  highlight Normal ctermbg=None guibg=None
endfunction

command! -nargs=0 TrimTrailingSpace call s:TrimTrailingSpace()
command! -nargs=0 InitTextMode call s:InitTextMode()
command! -nargs=0 InitCppMode call s:InitCppMode()
command! -nargs=0 SetTransparentTermBG call s:SetTransparentTermBG()

autocmd BufNewFile,BufRead *.h,*.cpp call s:InitCppMode()
autocmd BufNewFile,BufRead *.txt,*.md call s:InitTextMode()
