
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"打开文件展示修改记录
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" silent !mkdir -p ~/.config/nvim/generate/undotreetmp/backup
" silent !mkdir -p ~/.config/nvim/generate/undotreetmp/undo
"silent !mkdir -p ~/.config/nvim/generate/undotreetmp/sessions
set backupdir=~/.config/nvim/generate/undotreetmp/backup,.
set directory=~/.config/nvim/generate/undotreetmp/backup,.

" let g:undotree_debugenable = 0
" let g:undotree_debugfile = $HOME.'/.config/nvim/generate/undotreetmp/undotree.log'
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> n <plug>UndotreeNextState
	nmap <buffer> p <plug>UndotreePreviousState
	nmap <buffer> N 5<plug>UndotreeNextState
	nmap <buffer> P 5<plug>UndotreePreviousState
endfunc
