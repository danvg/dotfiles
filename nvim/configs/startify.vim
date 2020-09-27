" ~/.config/nvim/configs/startify.vim

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_autoload = 0
let g:startify_session_delete_buffers = 0
let g:startify_change_to_vcs_root = 0
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Desktop/Workspace',
            \ '~/Desktop/DT060G-HT20/dava1000_solutions_ht20',
            \ ]

let g:startify_custom_header = [
   \ '88888888ba,                             8b           d8  ,ad8888ba', 
   \ '88      `"8b                            `8b         d8. d8".    `"8b',
   \ '88        `8b                            `8b       d8. d8.          ',
   \ '88         88 ,adPPYYba, 8b,dPPYba,       `8b     d8.  88           ',
   \ '88         88 ""     `Y8 88P.   `"8a       `8b   d8.   88      88888',
   \ '88         8P ,adPPPPP88 88       88        `8b d8.    Y8,        88',
   \ '88      .a8P  88,    ,88 88       88         `888.      Y8a.    .a88',
   \ '88888888Y".   `"8bbdP"Y8 88       88          `8.        `"Y88888P" '
   \]
