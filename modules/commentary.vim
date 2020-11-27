function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
vnoremap <silent> <space>/ :call Comment()
autocmd FileType json setlocal commentstring=//\ %s
autocmd FileType nml setlocal commentstring=!\ %s
