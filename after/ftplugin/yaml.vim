if exists('g:loaded_plug')
    call itself#auto_load('nvim-colorizer.lua')
endif
if exists('g:loaded_colorizer')
    luafile $MYNVIM/lua/plug-colorizer.lua
endif
