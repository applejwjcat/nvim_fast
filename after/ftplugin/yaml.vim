if exists('g:loaded_plug')
    call plug#load('nvim-colorizer.lua')
endif
if exists('g:loaded_colorizer')
    luafile $MYNVIM/lua/plug-colorizer.lua
endif
