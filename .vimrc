call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" color schemas
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
colorscheme gruvbox
set background=dark
set number
set hlsearch
set incsearch

"mappings

map <C-v> :NERDTreeToggle<CR>

