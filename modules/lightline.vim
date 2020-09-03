if !exists('g:airline_symbols')
    let g:lightline_symbols= {}
endif

let g:lightline_symbols.readonly = ''
let g:lightline_symbols.linenr = '☰'
let g:lightline_symbols.maxlinenr = ''
let g:lightline_symbols.branch = ''
let g:lightline_right_alt_sep = ''
let g:lightline_left_alt_sep = ''
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#read_only = ''

let g:lightline = {
      \ 'colorscheme' : 'onedark' ,
      \ 'active' : {
          \ 'left' : [ [ 'mode', 'paste' ],
          \            [ 'readonly','gitbranch'],[ 'filename' ,'cocstatus']],
          \ 'right': [['lineinfo' ], ['method'], ['filetype']]
          \ },
      \ 'inactive' : {
          \ 'left' : [ [ 'filename' ] ],
          \ 'right' : [ ['lineinfo'] ]
          \ },
      \ 'tabline' : {
          \ 'left' : [['buffers']], 
          \ 'right': [['tabpage']]
          \},
      \ 'component' : {
          \ 'lineinfo' : '%{LightlineCountWords()}%p%% %-2{g:lightline_symbols.linenr}%l/%L%2{g:lightline_symbols.maxlinenr}:%-.3c',
          \ 'cocstatus' : '%<%{coc#status()}'
          \ },
      \ 'component_function' : {
          \ 'method' : 'NearestMethodOrFunction',
          \ 'gitbranch' : 'LightlineGitBranch',
          \ 'filename' : 'LightlineFilename',
          \ 'readonly' : 'LightlineReadOnly',
          \ 'tabpage' : 'LightlineGetTabpage'
          \},
      \ 'component_expand' : {'buffers': 'lightline#bufferline#buffers'},
      \ 'component_type' : {'buffers': 'tabsel'}
      \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! LightlineGitBranch()
    if !exists('g:loaded_fugitive')
        return ''
    endif
    if FugitiveHead() != ''
        let g:lightline_symbols.branch = ''
        let [a,m,r] = GitGutterGetHunkSummary()
        return join(['+'.a,'~'.m,'-'.r]) . ' ' . g:lightline_symbols.branch . FugitiveHead()
    else
        return ''
    endif
endfunction

function! LightlineFilename()
    if !exists('g:loaded_fugitive')
        let filename = expand('%:t') !=# '' ? expand('%:t') :'[NO Name]'
    elseif FugitiveWorkTree() != ''
        let filename = expand('%:t') !=# '' ? substitute(expand('%:p'),FugitiveWorkTree() . '/', '','') : '[No Name]'
    else 
        let filename = expand('%:t') !=# '' ? expand('%:t') :'[NO Name]'
    endif
    let modified = &modified ? '[+]' : ''
    return filename . modified
endfunction

function! LightlineReadOnly()
    return &readonly ? 'RO' . g:lightline_symbols.readonly : ''
endfunction

function! LightlineCountWords()
    let l:filetype = ['text', 'help','markdown']
    if matchstr(l:filetype,&ft) != ''
        let count_words = wordcount().words
        return count_words . " words " . g:lightline_left_alt_sep . ' '
    else
        return ''
    endif
endfunction

function! NearestMethodOrFunction() abort
    if exists('g:loaded_vista')
        return get(b:, 'vista_nearest_method_or_function', '')
    else
        return ''
    endif
endfunction

function LightlineGetTabpage()
    let l:tabpages = tabpagenr('$')
    if l:tabpages > 1
        return 'tab ' . tabpagenr() . '/' . l:tabpages
    else
        return 'buffers'
    endif
endfunction

autocmd BufReadPost * call vista#RunForNearestMethodOrFunction()
autocmd BufDelete * call lightline#update()

let g:lightline.subseparator = {'left':'','right':''}
