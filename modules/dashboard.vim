let g:dashboard_default_executive = 'fzf'
let g:dashboard_default_header = 'commicgirl6'
let g:dashboard_session_directory = '~/.config/nvim/utils/session'

autocmd FileType dashboard set showtabline=0
autocmd FileType dashboard set laststatus=0
autocmd BufReadPost * if &ft != 'dashboard'|set showtabline=4|else|set showtabline=0|endif
let g:dashboard_custom_shortcut={
  \ 'last_session'       : 'SPC s k',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC c n',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word'          : 'SPC f a',
  \ 'book_marks'         : 'SPC f b',
  \ }
