if !exists('g:airline_symbols')
    let g:lightline_symbols= {}
endif

let g:lightline_symbols.readonly = ''
let g:lightline_symbols.linenr = '☰'
let g:lightline_symbols.maxlinenr = ''
let g:lightline_symbols.branch = ''
let g:lightline_right_alt_sep = ''

let g:lightline = {
      \ 'colorscheme' : 'onedark' ,
      \ 'active' : {
          \ 'left' : [ [ 'mode', 'paste' ],
          \            [ 'readonly','gitbranch'],[ 'filename' ,'cocstatus']],
          \ 'right': [['lineinfo' ], ['method'], ['filetype']]
          \ },
      \ 'component' : {
          \ 'lineinfo' : '%{LightlineCountWords()}%p%% %-2{g:lightline_symbols.linenr}%l/%L%2{g:lightline_symbols.maxlinenr}:%-.3c',
          \ },
      \ 'component_function' : {
          \ 'method' : 'NearestMethodOrFunction',
          \ 'gitbranch' : 'LightlineGitBranch',
          \ 'filename' : 'LightlineFilename',
          \ 'readonly' : 'LightlineReadOnly',
          \ 'cocstatus' : 'coc#status',
          \}
      \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! LightlineGitBranch()
    if FugitiveHead() != ''
        let g:lightline_symbols.branch = ''
        let [a,m,r] = GitGutterGetHunkSummary()
        return join(['+'.a,'~'.m,'-'.r]) . ' ' . g:lightline_symbols.branch . FugitiveHead()
    else
        return ''
    endif
endfunction

function! LightlineFilename()
    if FugitiveWorkTree() != ''
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
        return count_words . " words " . g:lightline_right_alt_sep . ' '
    else
        return ''
    endif
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline.subseparator = {'left':'','right':''}
