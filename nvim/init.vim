" Source the plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/vim-dogrun.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/themes/lightline.vim
source $HOME/.config/nvim/plug-config/rainbow_parantheses.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim
"source $HOME/.config/nvim/plug-config/rnvimr.vim


" Source the plugins in Lua
"luafile $HOME/.config/nvim/lua/plug-colorizer.lua

if exists("g:neovide")
    " Put anything you want to happen only in Neovide here 
    set guifont=Hack:h7

    let g:neovide_scale_factor=1
    function! ChangeScaleFactor(delta)
        let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)

endif


