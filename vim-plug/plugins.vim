" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating', {'on':[]}
  " Files
  " Plug 'tpope/vim-eunuch', {'on': []}
  " Repeat stuff
  " Plug 'tpope/vim-repeat', {'on': []}
  " Surround
  Plug 'tpope/vim-surround', {'on': []}
  " Better Comments
  Plug 'tpope/vim-commentary', {'on': []}
  " Have the file system follow you around
  " Plug 'airblade/vim-rooter', {'on':[]}
  " auto set indent settings
  "Plug 'tpope/vim-sleuth'

  " Text Navigation
  Plug 'justinmk/vim-sneak', {'on': [], 'as': 'sneak'}
  " Plug 'unblevable/quick-scope'
  " Add some color
  " Plug 'norcalli/nvim-colorizer.lua',{'on': []}
  Plug 'luochen1990/rainbow', {'on':[]}
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot', {'on':[]}
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs', {'on':[]}
  " Themes
  Plug 'joshdick/onedark.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release',}
  " Status Line
  Plug 'itchyny/lightline.vim',{'on' : []}

  Plug 'kevinhwang91/rnvimr'
  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.config/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Git
  Plug 'airblade/vim-gitgutter',{'on' :[]}
  Plug 'tpope/vim-fugitive',{'on': []}
  Plug 'tpope/vim-rhubarb', {'on':[]}
  Plug 'junegunn/gv.vim', {'on': []}
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'hardcoreplayers/dashboard-nvim',{'commit': '9f0bff0', 'frozen': 1}
  " Plug 'mhinz/vim-startify'
  " Vista
  Plug 'liuchengxu/vista.vim'
  " Plug 'liuchengxu/vista.vim', {'on' : []}
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
  " Snippets
  Plug 'honza/vim-snippets', {'on': []}
  " Plug 'mattn/emmet-vim'
  " Interactive code
  " Plug 'metakirby5/codi.vim', {'on': []}
  " Debugging
  " Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}
  " Better tabline
  Plug 'mengelbrecht/lightline-bufferline',{'on' :[]}
  " undo time travel
  Plug 'applejwjcat/undotree', {'on': []}
  " Plug 'mbbill/undotree', {'on': []}
  " highlight all matches under cursor
  Plug 'RRethy/vim-illuminate', {'on': []}
  " Find and replace
  Plug 'ChristianChiarulli/far.vim', {'on' :[]}
  " Auto change html tags
  " Plug 'AndrewRadev/tagalong.vim', {'on' :[]}
  " live server
  " Plug 'turbio/bracey.vim', {'on' : []}
  " Markdown Preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown'  }
  " Easily Create Gists
  " Plug 'mattn/vim-gist', {'on': []}
  " Plug 'mattn/webapi-vim'
  " Add go support
  Plug 'fatih/vim-go', {'on':[]}
  " Plug 'fatih/vim-go'
  Plug 'godlygeek/tabular', {'on': []}
  Plug 'lervag/vimtex'

call plug#end()

let g:polyglot_disabled = ['autoindent']
" autocmd BufReadPost * ++once call itself#auto_load('post_source',
    " \ 'vista.vim'
    " \)

autocmd BufReadPost,BufNewFile * ++once call itself#auto_load('post_source',
    \ 'vim-fugitive',
    \ 'vim-illuminate',
    \ 'auto-pairs',
    \ 'vim-commentary',
    \ 'vim-surround',
    \ 'vim-speeddating',
    \ 'rainbow',
    \ 'vim-gitgutter',
    \ 'vim-polyglot',
    \ 'lightline.vim',
    \ 'lightline-bufferline',
		\ 'vim-snippets',
    \ 'far.vim',
    \)
autocmd BufReadPost,BufNewFile *.f90 ++once call itself#auto_load('post_source','format')
autocmd BufReadPost,BufNewFile * ++once call itself#auto_load('source',
    \ 'sneak',
    \)

autocmd BufReadPost,BufNewFile * ++once call itself#auto_load('source',
    \ 'undotree'
    \)

autocmd CmdlineEnter * ++once call itself#auto_load('post_source',
    \ 'tabular'
    \)   " \ 'vim-eunuch',

autocmd CursorHold,CursorHoldI * ++once call itself#auto_load('post_source',
    \ 'gv.vim',
    \)   " \ 'vim-repeat',   \ 'vim-rhubarb',    \ 'vim-gist',     \ 'codi.vim',     \ 'vim-rooter',

autocmd BufReadPre,BufNewFile *.go ++once call itself#auto_load('source','vim-go')

autocmd BufNewFile,BufReadPost *.nml set filetype=nml

autocmd BufWritePost *.f90  call Format_fortran()
" autocmd BufReadPost,BufNewFile *.html,*.css,*.js,*.ts,*.php ++once call itself#auto_load('post_source',
"     \ 'tagalong',
"     \ 'bracey'
"   \ )

" Search help files

function! s:plug_help_sink(line)
  let dir = g:plugs[a:line[4:]].dir
  for pat in ['doc/*.txt', 'README.*']
    let match = get(split(globpath(dir, pat), "\n"), 0, '')
    if len(match)
      execute 'tabedit' match
      if !filereadable(expand($MYNVIM) . '/generate/plugins_path/' . a:line)
          call writefile(add([],match),expand($MYNVIM) . '/generate/plugins_path/' . a:line)
      endif
      return
    endif
  endfor
  tabnew
  execute 'Explore' dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
  \ 'source': map(sort(keys(g:plugs)),'" " . v:val'),
  \ 'sink':   function('s:plug_help_sink'),
  \ 'options': '--preview-window=80% --preview="cat $MYNVIM/generate/plugins_path/{-1} | ~/.config/nvim/generate/preview.sh " '}))

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

  " Plugin Graveyard{{{

  " Smooth scroll
  " Plug 'psliwka/vim-smoothie'
  " async tasks
  "Plug 'skywind3000/asynctasks.vim'
  "Plug 'skywind3000/asyncrun.vim'
  " Swap windows
  " Plug 'wesQ3/vim-windowswap'
  " Better Whitespace
  " Plug 'ntpeters/vim-better-whitespace'
  " jsx syntax support
  " Plug 'maxmellon/vim-jsx-pretty'
  " Typescript syntax
  " Plug 'HerringtonDarkholme/yats.vim'
  " Multiple Cursors
  " Plug 'terryma/vim-multiple-cursors'
  " Async Linting Engine
  " TODO make sure to add ale config before plugin
  " Plug 'dense-analysis/ale'
  " Plug 'kaicataldo/material.vim'
  " Plug 'NLKNguyen/papercolor-theme'
  " Plug 'tomasiser/vim-code-dark'
  " Vim Wiki
  " Plug 'https://github.com/vimwiki/vimwiki.git'
  " Better Comments
  " Plug 'jbgutierrez/vim-better-comments'
  " Echo doc
  " Plug 'Shougo/echodoc.vim'
  " Plug 'hardcoreplayers/spaceline.vim'
  " Plug 'vim-airline/vim-airline-themes'
  " Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  " Making stuff
  " Plug 'neomake/neomake'
  " Plug 'mhinz/vim-signify'
  " Plug 'easymotion/vim-easymotion'
  " Plug 'preservim/nerdcommenter'
  " Plug 'brooth/far.vim'
  " Plug 'atishay/far.vim'
  " Closetags
  " Plug 'alvan/vim-closetag'
	" }}}

" vim: foldmethod=marker ts=2 sw=2 tw=80 noet :
