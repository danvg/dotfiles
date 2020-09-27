" ~/.config/nvim/configs/pencil.vim

function! InitTextMode()
  call pencil#init()
  call litecorrect#init()
  call lexical#init({
        \ 'spell': 1,
        \ 'spellang': ['en'],
        \ 'dictionary': ['~/.vim/spell/dict/words'],
        \ 'thesaurus': ['~/.vim/spell/thesaurus/mthesaur.txt']
        \ })

  colorscheme pencil
  setl background=light
  let g:airline_theme = 'pencil'
  let g:pencil_gutter_color = 1
  let g:pencil_neutral_code_bg = 1
  let g:pencil_neutral_headings = 1
  let g:pencil_higher_contrast_ui = 0
  let g:pencil_spell_undercurl = 1
  let g:pencil_terminal_italics = 1
  let g:pencil#wrapModeDefault = 'soft'
  let g:lexical#spell = 1
  let g:lexical#thesaurus_key = '<leader>t'
endfunction
