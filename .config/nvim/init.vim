
" Imports "{{{
" ---------------------------------------------------------------------
runtime ./vimrc.vim
runtime ./plug.vim
runtime ./maps.vim
runtime ./theme.vim
"}}}

" Auto Add File Header 
" Add python and bash header
if filereadable($HOME . "/.config/nvim/shpy/shpy-autoheader.vim")
    source $HOME/.config/nvim/shpy/shpy-autoheader.vim
endif

" Add html template
if filereadable($HOME . "/.config/nvim/shpy/shpy-htmltemplate.vim")
  source $HOME/.config/nvim/shpy/shpy-htmltemplate.vim
endif

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

