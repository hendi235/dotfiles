" Vim Plugin installed "{{{
" ---------------------------------------------------------------------
call plug#begin('~/Appdata/Local/nvim/addons')
" ---colorscheme---
  "Plug 'altercation/vim-colors-solarized'    " original solarized cannot work in neovim
  Plug 'zaiste/Atom'
  Plug 'frankier/neovim-colors-solarized-truecolor-only'
  Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
" ---tools---  
  Plug 'kien/ctrlp.vim'
  Plug 'jwhitley/vim-matchit'
  "--- my own plugin ---
  Plug 'hendi235/vim-flex'
  
call plug#end()
" }}}
" Execute :F command to clear last search pattern. Useful to turn-off pattern highlight temporarily.
" [see http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting?rq=1]
command F let @/=""

" Fonts "{{{
" ---------------------------------------------------------------------
if has ("gui_running")
    " Set global font
    set guifont=Source Code Pro:h11:cDEFAULT

    " try to start GUI in full window size
    au GUIEnter * simalt ~x
endif
" }}}
" Behavior "{{{
" ---------------------------------------------------------------------
" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" ignore case in searching
set ignorecase

" case-sensitive search only if searchword contains uppercase letter
"set smartcase

" don't wrap searching at the end of file
set nowrapscan

" show line number
set nu

" no annoying word wrapping
set textwidth=0

" don't wrap at end of window
set nowrap

set tabstop=2

set shiftwidth=2

" convert TAB into spaces 
set expandtab

" Use true colors in terminal
set termguicolors

" }}}
" Nvim default behavior "{{{
" ---------------------------------------------------------------------
" Syntax highlighting is enabled by default
"syntax on

"filetype plugin indent on is enabled by default

"autoindent is set by default
"autoread is set by default
"backspace defaults to indent,eol,start
"backupdir defaults to .,~/.local/share/nvim/backup (|xdg|)
"belloff defaults to all
"complete doesn't include i
"directory defaults to ~/.local/share/nvim/swap// (|xdg|), auto-created
"display defaults to lastline
"formatoptions defaults to tcqj
"history defaults to 10000 (the maximum)
"hlsearch is set by default
"incsearch is set by default
"langnoremap is enabled by default
"langremap is disabled by default
"laststatus defaults to 2 (statusline is always shown)
"listchars defaults to tab:> ,trail:-,nbsp:+
"nocompatible is always set
"nrformats defaults to bin,hex
"ruler is set by default
"sessionoptions doesn't include options
"showcmd is set by default
"smarttab is set by default
"tabpagemax defaults to 50
"tags defaults to ./tags;,tags
"ttyfast is always set
"undodir defaults to ~/.local/share/nvim/undo (|xdg|), auto-created
"viminfo includes !
"wildmenu is set by default
" }}}
" Re-mapping key "{{{
" ---------------------------------------------------------------------
" change <leader> key to 'comma', easier to reach in Dvorak
let mapleader = ","

" Use double-tap of quote (') to replace <ESC> in insert mode
inoremap '' <ESC>

" set syntax highlight to FLEX trace. vim-flex plugin is required.
map <F3> :set syntax=slog<CR>

" Quick search using lvimgrep. Input pattern is asked, open location-list
" window, don't jump into 1st match.
map <F4> :exe ':lvimgrep /'.input("Enter pattern: ").'/j%\|lopen'<CR>
" }}}
" global colortheme "{{{
" ---------------------------------------------------------------------
" -- solarized
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized_nvimqt

" -- Atom
"colorscheme Atom
" }}}

