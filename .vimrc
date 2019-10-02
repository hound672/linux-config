call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
" color schemas
Plug 'morhetz/gruvbox'

call plug#end()

syntax enable 
colorscheme monokai
set background=dark
set number
set hlsearch
set incsearch

"mappings

map <C-v> :NERDTreeToggle<CR>

