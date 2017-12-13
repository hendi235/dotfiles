call plug#begin('~/Appdata/Local/nvim/addons')
" ---colorscheme---
  Plug 'altercation/vim-colors-solarized'
  Plug 'zaiste/Atom'
" ---tools---  
  Plug 'kien/ctrlp.vim'
  Plug 'jwhitley/vim-matchit'
  "--- my own plugin ---
  Plug 'hendi235/vim-flex'
  
call plug#end()

" global colortheme
"let g:solarized_contrast="normal"
"colorscheme solarized
colorscheme Atom

" change <leader> key to 'comma', easier to reach in Dvorak
let mapleader = ","

" set syntax highlight to FLEX trace. vim-flex plugin is required.
map <F3> :set syntax=slog<CR>