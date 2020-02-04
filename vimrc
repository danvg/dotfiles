" VIM Config file

set nocompatible
filetype off

" auto setup plugin manager
if has('nvim')
   if has('win32')
      " echom '@TODO windows nvim auto download plugin manager'
      " windows: ~/AppData/Local/nvim/autoload/plug.vim
   else
      if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
         !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      endif
   endif
else
   if has('win32')
      " echom '@TODO windows vim auto download plugin manager'
      " windows: %USERPROFILE%/vimfiles/autoload/plug.vim
   else
      if empty(glob("~/.vim/autoload/plug.vim"))
         !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      endif
   endif
endif

if has('nvim')
   if has('win32')
      call plug#begin('~/AppData/local/nvim/plugged')
   else
      call plug#begin('~/.config/nvim/plugged')
   endif
else
   if has('win32')
      call plug#begin('~/vimfiles/plugged')
   else
      call plug#begin('~/.vim/plugged')
   endif
endif

Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'lifepillar/vim-mucomplete'
if has('win32')
   Plug 'autozimu/LanguageClient-neovim', {'branch':'next', 'do': 'powershell -executionpolicy bypass -File install.ps1'}
else
   Plug 'autozimu/LanguageClient-neovim', {'branch':'next', 'do':'bash install.sh'}
endif
Plug 'junegunn/fzf'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

set hidden

if has('nvim')
   if has('win32')
      set runtimepath+='~/AppData/Local/nvim/plugged/LanguageClient-neovim'
   else
      set runtimepath+='~/.config/nvim/plugged/LanguageClient-neovim'
   endif
else
   if has('win32')
      set runtimepath+='~/vimfiles/plugged/LanguageClient-neovim'
   else
      set runtimepath+='~/.vim/plugged/LanguageClient-neovim'
   endif
endif

let g:LanguageClient_serverCommands = {
   \ 'python': ['pyls'],
   \ 'c'     : ['clangd'],
   \ 'cpp'   : ['clangd'],
   \ 'ada'   : ['ada_language_server'],
   \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

let g:mucomplete#enable_auto_at_startup = 1
let g:ada_standard_types=1

let g:lightline = {
   \ 'colorscheme': 'Tomorrow_Night_Eighties',
   \ 'active': {
   \   'left': [ [ 'mode', 'paste' ],
   \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
   \ },
   \ 'component_function': {
   \   'gitbranch': 'FugitiveHead'
   \ },
   \ }

" Spellcheck
" set spelllang=en,sv
" set spell " Dont want this by default

" Language syntax hightlighting
filetype plugin indent on
syntax enable
if !has('gui_running')
   set t_Co=256
endif
set background=dark
colorscheme neodark

" Completion
set completeopt+=menuone,noselect,preview
set shortmess+=c
set shortmess+=I " no intro msg
set belloff+=ctrlg
set noerrorbells visualbell t_vb=
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
set cursorline
set colorcolumn=80
set splitright
set splitbelow

" Removes trailing spaces
function TrimTrailingWhiteSpace()
  %s/\s*$//
  ''
endfunction

" autoremove trailing whitespace on save
autocmd FileType ada,c,cpp autocmd BufWritePre <buffer> %s/\s\+$//e

" will make it so that the completion menu doesnt close
" upon hitting enter
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" emacs style indentation
:nnoremap <Tab> ==
