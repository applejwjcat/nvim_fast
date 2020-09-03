
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"打开文件展示修改记录
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent !mkdir -p ~/.config/nvim/generate/undotreetmp/backup
silent !mkdir -p ~/.config/nvim/generate/undotreetmp/undo
"silent !mkdir -p ~/.config/nvim/generate/undotreetmp/sessions
set backupdir=~/.config/nvim/generate/undotreetmp/backup,.
set directory=~/.config/nvim/generate/undotreetmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/generate/undotreetmp/undo,.
endif

let g:undotree_debugenable = 0
let g:undotree_debugfile = $HOME.'/.config/nvim/generate/undotreetmp/undotree.log'
