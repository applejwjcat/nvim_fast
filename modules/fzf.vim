" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1

" map <C-f> :Files<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>g :Rg<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

"             \ --preview="~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}" 
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info --border 
            \ --color="dark" --color="fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe"
            \ --color="info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef"'

let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"-g '!{node_modules,.git}'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
" command! -bang -nargs=? -complete=dir Files
    " \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--inline-info',
    " \'--preview', '$MYNVIM/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

function! AddIcons(key,val)
    return WebDevIconsGetFileTypeSymbol(a:val) . ' ' . a:val
endfunction

function! s:Wrap_File(dir,bang)
    if empty(a:dir)
        let l:dir = fnamemodify(getcwd(), ':~:.')
    else
        let l:dir = fnamemodify(a:dir, ':~')
    endif
    if l:dir == "~" || l:dir == ""
        call fzf#vim#files(l:dir, {}, a:bang)
    else
        let l:source = map(systemlist("cd " . expand(l:dir) . " && fd -t file "),function('AddIcons'))
        call fzf#vim#files(l:dir,{
            \ 'source' : l:source,
            \ 'sink' : {line -> execute('e ' . line[4:])},
            \ 'options' : ['--layout=reverse', '--inline-info', '--preview',
            \ '$MYNVIM/plugged/fzf.vim/bin/preview.sh {-1}',
            \ '--preview-window=60%']
            \},a:bang)
    endif
endfunction

command! -bang -nargs=? -complete=dir Files call s:Wrap_File(<q-args>, <bang>0)
nnoremap <Space>fg :Files $HOME/<TAB>

" History
function! s:history(arg, extra, bang)
  let bang = a:bang || a:arg[len(a:arg)-1] == '!'
  if a:arg[0] == ':'
    call fzf#vim#command_history(bang)
  elseif a:arg[0] == '/'
    call fzf#vim#search_history(bang)
  else
      call fzf#vim#history({
  \ 'source':  map(fzf#vim#_recent_files(),function('AddIcons')),
  \ 'sink' : {line -> execute('e ' . line[4:])},
  \ 'options': ['-m', '--header-lines', !empty(expand('%')), '--prompt', 'Hist> ',
  \ '--layout=reverse', '--inline-info', '--preview',
  \ '$MYNVIM/plugged/fzf.vim/bin/preview.sh {-1}',
  \ '--preview-window=60%']
  \},bang)
  endif
endfunction

command!      -bang -nargs=* History                   call s:history(<q-args>, {}, <bang>0)
" 用vim自带函数遍历所有文件，很慢
" function! s:FileIcons(dir)
    " let l:files = split(globpath(expand(a:dir),"**"))
    " call map(l:files,function('AddIcons'))
    " return l:files
" endfunction

" function! s:Wrap(dir,bang)
    " let l:source = s:FileIcons(a:dir)
    " call fzf#run(fzf#wrap({
        " \ 'source' : l:source,
        " \ 'sink' : {line -> execute('e ' . line[4:])},
        " \ 'options' : ['--layout=reverse', '--inline-info', '--preview',
        " \ '$MYNVIM/plugged/fzf.vim/bin/preview.sh {-1}',
        " \ '--preview-window=80%']
        " \},a:bang))
" endfunction

" command! -bang -nargs=? -complete=dir FileIcons call s:Wrap(<q-args>,<bang>0)


" Plugins Config
command! -bang -nargs=* -complete=dir PluginConfig call s:Wrap_File("~/.config/nvim/modules", <bang>0)

" command! -bang PluginConfig
"     \ call fzf#run(fzf#wrap({
"         \ 'source' : 'ls ~/.config/nvim/modules | sed "s/^/ /"',
"         \ 'sink' : {line -> execute('e ~/.config/nvim/modules/' . line[4:])},
"         \ 'options' : ['--layout=reverse', '--inline-info', '--preview',
"         \ '$MYNVIM/plugged/fzf.vim/bin/preview.sh ~/.config/nvim/modules/{-1}',
"         \ '--preview-window=80%']
"         \}, <bang>0))

" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   "rg --column --line-number --no-heading --color=always --smart-case --glob '!.git/**' ".shellescape(<q-args>), 1,

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

command! -bang -complete=dir -nargs=* LS
    \ call fzf#run(fzf#wrap({'source': 'ls', 'dir': <q-args>}, <bang>0))
" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

command! -bar -bang Colors     call fzf#vim#colors({'options':'--preview-window=hidden',
            \'window': { 'width': 0.4, 'height': 0.6,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } },<bang>0)

if has('nvim')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
              \| autocmd BufEnter * if &filetype != 'dashboard'|set laststatus=2|endif
endif
