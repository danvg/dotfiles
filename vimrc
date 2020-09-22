" ~/.vimrc

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
call plug#end()

" ------------------------------------------------------------------------
"  Plugin configs
" ------------------------------------------------------------------------

source ~/.vimrc-coc

let g:airline_powerline_fonts=1
let g:airline_theme='base16_gruvbox_dark_hard'

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1

" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" ------------------------------------------------------------------------
"  Base configs
" ------------------------------------------------------------------------

" Leader key
let mapleader = " "

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
set completeopt+=menuone,noselect,preview
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
set showcmd
set cursorline
set colorcolumn=80
set splitright
set splitbelow

" ------------------------------------------------------------------------
"  Utilities
" ------------------------------------------------------------------------

" Removes trailing spaces
function TrimTrailingWhiteSpace()
  %s/\s*$//
  ''
endfunction

augroup Markdown
  autocmd!
  autocmd FileType markdown
           \ set textwidth=0 wrapmargin=0 wrap formatoptions+=t linebreak
augroup END

function! SetupTextEditorOptions()
   colorscheme pencil
   set background=light
   let g:airline_theme = 'pencil'
   let g:pencil_gutter_color = 1
   let g:pencil_neutral_code_bg = 1
   let g:pencil_neutral_headings = 1
   let g:pencil_higher_contrast_ui = 0
   let g:pencil_spell_undercurl = 1
   let g:pencil_terminal_italics = 1
   let g:lexical#spell = 1
   let g:lexical#thesaurus_key = '<leader>t'
endfunction

augroup pencil
   autocmd!
   autocmd FileType text call pencil#init()
   autocmd FileType text call litecorrect#init()
   autocmd FileType text call lexical#init({
      \ 'spell': 1,
      \ 'spellang': ['en'],
      \ 'dictionary': ['~/vimfiles/spell/dict/words'],
      \ 'thesaurus': ['~/vimfiles/spell/thesaurus/mthesaur.txt']
      \ })
   autocmd FileType text call SetupTextEditorOptions()
augroup end
