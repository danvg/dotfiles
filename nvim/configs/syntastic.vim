" ~/.config/nvim/configs/syntastic.vim

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '✘'
let g:syntastic_warning_symbol = ''
let g:syntastic_style_warning_symbol = ''
