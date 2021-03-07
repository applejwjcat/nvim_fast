
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
		let filename = expand('%:t:r')
		if &filetype == 'cpp'
				let command = "FloatermNew g++ " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"\nPress enter to continue...\";exit"
		elseif &filetype == 'fortran'
				let command = "FloatermNew ifort " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"\nPress enter to continue...\";exit"
		elseif &filetype == 'c'
				let command = "FloatermNew gcc " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"\nPress enter to continue...\";exit"
		elseif &filetype == 'go'
				let command = "FloatermNew go run " . pathfile . ";read \\?\"\nPress enter to continue...\";exit"
		elseif &filetype == 'sh'
				let command = "FloatermNew bash " . pathfile . ";read \\?\"\nPress enter to continue...\";exit"
        elseif &filetype == 'markdown'
				let command = ''
                exec "MarkdownPreview"
		elseif &filetype == 'python'
				let command = "FloatermNew python " . pathfile . ";read \\?\"\nPress enter to continue...\";exit"
		elseif &filetype == 'mma'
				let command = "FloatermNew wolframscript -f " . pathfile . ";read \\?\"\nPress enter to continue...\";exit"
        elseif &filetype == 'tex'
                let command = "call vimtex#compiler#compile()"
		endif
        exec "w"
 		execute (command)
endfunc

if has('nvim')
  autocmd! FileType floaterm
  autocmd  FileType floaterm set laststatus=0 noshowmode noruler
              \| autocmd BufEnter * if &filetype != 'dashboard'|set laststatus=2|endif
endif
