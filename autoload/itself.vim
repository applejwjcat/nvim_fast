if exists('g:auto_load_plugins')
    finish
endif
let g:auto_load_plugins = 1

function! itself#load_plugins(source_method,plugin)
    if a:source_method == 'post_source'
        if a:plugin != 'format'
            call plug#load(a:plugin)
        endif
        if filereadable(expand('$MYNVIM') . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim' )
            execute 'source' expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'
            " call writefile(['source ' . expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'],"/tmp/log.txt",'a')
        endif
    else
        if filereadable(expand('$MYNVIM') . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim' )
            execute 'source' expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'
            " call writefile(['source ' . expand($MYNVIM) . '/modules/' . fnamemodify(a:plugin, ":r") . '.vim'],"/tmp/log.txt",'a')
        endif
        call plug#load(a:plugin)
    endif
endfunction

function! itself#auto_load(...)
    if a:0 <= 1 
        finish
    else
        for plugin in a:000[1:]
            if a:1 == 'source'
                call itself#load_plugins('source',plugin)
            elseif a:1 == 'post_source'
                call itself#load_plugins('post_source',plugin)
            else
                echo "Arguments error, The first argument must be 'source' or 'post_source'!"
            endif
        endfor
    endif
endfunction
