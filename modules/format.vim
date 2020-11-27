function! Format_fortran() 
    let pathfile = expand('%:p')
    let command = "silent !fprettify " . pathfile
    execute(command)
    execute "edit"
endfunction


