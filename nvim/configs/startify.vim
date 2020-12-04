" ~/dotfiles/nvim/configs/startify.vim

let g:startify_session_dir = '~/dotfiles/nvim/session'
let g:startify_session_autoload = 0
let g:startify_session_delete_buffers = 0
let g:startify_change_to_vcs_root = 0
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/dotfiles/nvim/init.vim' },
            \ { 'h': '~/' },
            \ { 'd': '~/Desktop' },
            \ ]
