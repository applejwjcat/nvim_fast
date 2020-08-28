"   _____     _     _              _                   _
"  |_   _| __(_)___| |_ __ _ _ __ ( )___    _ ____   _(_)_ __ ___
"    | || `__| / __| __/ _` | `_ \|// __|  | `_ \ \ / / | `_ ` _ \
"    | || |  | \__ \ || (_| | | | | \__ \  | | | \ V /| | | | | | |
"    |_||_|  |_|___/\__\__,_|_| |_| |___/  |_| |_|\_/ |_|_| |_| |_|


" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim

" Themes
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/lightline.vim
" source $HOME/.config/nvim/themes/airline.vim

" Plugin Configuration
source $HOME/.config/nvim/settings-plug/rnvimr.vim
source $HOME/.config/nvim/settings-plug/fzf.vim
source $HOME/.config/nvim/settings-plug/vim-commentary.vim
source $HOME/.config/nvim/settings-plug/rainbow.vim
source $HOME/.config/nvim/settings-plug/codi.vim
source $HOME/.config/nvim/settings-plug/quickscope.vim
source $HOME/.config/nvim/settings-plug/vim-wiki.vim
source $HOME/.config/nvim/settings-plug/sneak.vim
source $HOME/.config/nvim/settings-plug/coc.vim
source $HOME/.config/nvim/settings-plug/goyo.vim
source $HOME/.config/nvim/settings-plug/vim-rooter.vim
source $HOME/.config/nvim/settings-plug/start-screen.vim
source $HOME/.config/nvim/settings-plug/gitgutter.vim
source $HOME/.config/nvim/settings-plug/floaterm.vim
source $HOME/.config/nvim/settings-plug/vista.vim
source $HOME/.config/nvim/settings-plug/xtabline.vim
source $HOME/.config/nvim/settings-plug/polyglot.vim
source $HOME/.config/nvim/settings-plug/far.vim
source $HOME/.config/nvim/settings-plug/tagalong.vim
source $HOME/.config/nvim/settings-plug/illuminate.vim
source $HOME/.config/nvim/settings-plug/bracey.vim
source $HOME/.config/nvim/settings-plug/asynctask.vim
source $HOME/.config/nvim/settings-plug/markdown-preview.vim
source $HOME/.config/nvim/settings-plug/go.vim
source $HOME/.config/nvim/settings-plug/undotree.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Experimental
let g:vimspector_base_dir=expand( '$HOME/.config/nvim/vimspector-config' )
" let g:vimspector_enable_mappings='HUMAN'
" 
" disable the closetags
"source $HOME/.config/nvim/settings-plug/closetags.vim
"source $HOME/.config/nvim/settings-plug/window-swap.vim
