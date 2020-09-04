let g:dashboard_default_executive = 'fzf'
let g:dashboard_default_header = 'commicgirl6'
let g:dashboard_session_directory = '~/.config/nvim/utils/session'

autocmd FileType dashboard set showtabline=0
autocmd FileType dashboard set laststatus=0
autocmd BufReadPost * if &ft != 'dashboard'|set showtabline=4|else|set showtabline=0|endif
