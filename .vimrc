call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

call plug#end()

syntax enable 
colorscheme monokai
set number
set hlsearch
set incsearch

"mappings

map <C-v> :NERDTreeToggle<CR>

