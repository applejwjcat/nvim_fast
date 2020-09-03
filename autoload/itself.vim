if exists('g:auto_load_plugins')
    finish
endif
let g:auto_load_plugins = 1

function! itself#load_plugins(plugin)
    call plug#load(a:plugin)
    if filereadable(expand('$MYNVIM') . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim' )
        execute 'source' expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'
        " call writefile(['source ' . expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'],"/tmp/log.txt",'a')
    endif
endfunction

function! itself#auto_load(...)
    if a:0 == 0 
        finish
    else
        for plugin in a:000
            call itself#load_plugins(plugin)
        endfor
    endif
endfunction
