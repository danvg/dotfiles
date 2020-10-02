" ~/.config/nvim/configs/defaults.vim

" Spellcheck
set spelllang=en
set spell

" Language syntax colorization
filetype plugin indent on
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox
let g:ada_standard_types=1

" Completion
set completeopt+=menuone,noselect,noinsert
set shortmess+=c
set shortmess+=I " no intro msg
set belloff+=ctrlg
set noerrorbells visualbell t_vb=
set path+=**
set wildmenu

" Searching
set nohlsearch
set ignorecase
set smartcase
set showmatch
set matchtime=5
set incsearch

" Wrapping
set nowrap
set linebreak
set textwidth=500
set whichwrap+=<,>,[,],h,l

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
set mousehide
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set smarttab
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
set pumheight=12
set number
set showcmd
set cursorline
set colorcolumn=80
set splitright
set splitbelow
set showtabline=2
set signcolumn=yes

" Removes trailing spaces
function TrimTrailingWhiteSpace()
  %s/\s*$//
  ''
endfunction

" Markdown mode
function! InitMarkdownMode()
  setl textwidth=0
  setl wrapmargin=0
  setl wrap
  setl formatoptions+=t
  setl linebreak
endfunction
