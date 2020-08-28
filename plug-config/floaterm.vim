
" let g:floaterm_wintype='normal'
" let g:floaterm_height=6

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" run in floaterm
nnoremap r :call CompileRun()<CR>
function! CompileRun()
		let pathfile = expand('%:p')
		let filename = @%
		if &filetype == 'cpp'
				let command = "FloatermNew g++ " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"Press enter to continue...\";exit"
		elseif &filetype == 'c'
				let command = "FloatermNew gcc " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"Press enter to continue...\";exit"
		elseif &filetype == 'go'
				let command = "FloatermNew go run " . pathfile . ";read \\?\"Press enter to continue...\";exit"
		elseif &filetype == 'sh'
				let command = "FloatermNew bash " . pathfile . ";read \\?\"Press enter to continue...\";exit"
		elseif &filetype == 'python'
				let command = "FloatermNew python " . pathfile . ";read \\?\"Press enter to continue...\";exit"
		endif
        exec "w"
 		execute (command)
endfunc
