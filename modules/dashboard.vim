let g:dashboard_default_executive = 'fzf'
let g:dashboard_default_header = 'commicgirl6'
let g:dashboard_session_directory = '~/.config/nvim//generate/utils/session'

autocmd FileType dashboard set showtabline=0
autocmd FileType dashboard set laststatus=0
autocmd BufReadPost * if &ft != 'dashboard'|set showtabline=4|else|set showtabline=0|endif
" let g:dashboard_custom_shortcut={
"   \ 'last_session'       : 'SPC f s',
"   \ 'find_history'       : 'SPC f h',
"   \ 'find_file'          : 'SPC f f',
"   \ 'new_file'           : 'SPC v n',
"   \ 'change_colorscheme' : 'SPC f c',
"   \ 'find_word'          : 'SPC f t',
"   \ 'book_marks'         : 'SPC f m',
"   \ }

  " let g:dashboard_custom_section = {
    " \ 'find_history'         :[s:dashboard_shortcut_icon['find_history'].'Recently opened files                 '.s:dashboard_shortcut['find_history']],
    " \ 'find_file'            :[s:dashboard_shortcut_icon['find_file'].'Find  File                            '.s:dashboard_shortcut['find_file']],
    " \ 'new_file'             :[s:dashboard_shortcut_icon['new_file'].'New  File                             '.s:dashboard_shortcut['new_file']],
    " \ 'find_word'            :[s:dashboard_shortcut_icon['find_word'].'Find  word                            '.s:dashboard_shortcut['find_word']],
    " \ 'last_session'         :[s:dashboard_shortcut_icon['last_session'].'Recently last session                 '.s:dashboard_shortcut['last_session']],
    " \ 'change_colorscheme'   :[s:dashboard_shortcut_icon['change_colorscheme'].'Change Colorscheme                    '.s:dashboard_shortcut['change_colorscheme']],
    " \ 'book_marks'           :[s:dashboard_shortcut_icon['book_marks'].'Jump to book marks                    '.s:dashboard_shortcut['book_marks']],
    " \ }

let g:dashboard_custom_section={
  \ 'A_find_history':     [' Recently Opened Files                 SPC f h'],
  \ 'B_find_file' :       [' Find File                             SPC f f'],
  \ 'C_new_file' :        [' New File                              SPC v n'],
  \ 'D_book_marks' :      [' Jump to book marks                    SPC f m'],
  \ 'E_buffer_list':      [' Recently last session                 SPC f b'],
  \ 'F_find_word' :       [' Find Text                             SPC f t'],
  \ 'G_change_color':     [' Change Colorscheme                    SPC f c'],
  \ }

function! E_BUFFER_LIST()
  Buffers
endfunction

function! A_FIND_HISTORY()
    History
endfunction

function! B_FIND_FILE()
    Files
endfunction

function! D_BOOK_MARKS()
    Marks
endfunction

function! C_NEW_FILE()
  if &laststatus == 0
      set laststatus=2
    endif
  execute 'enew'
endfunction

function! G_CHANGE_COLOR()
    Colors
endfunction

function! F_FIND_WORD()
    Rg
endfunction
