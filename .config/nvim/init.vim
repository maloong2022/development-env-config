
" Imports "{{{
" ---------------------------------------------------------------------
runtime ./vimrc.vim

runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif
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

" ========= tagbar settings ==========
let g:tagbar_ctags_bin='/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags'
autocmd VimEnter *.go  Tagbar
