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
set clipboard=unnamed
set expandtab
set tabstop=4
set laststatus=2

"mappings

map <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-d> "+d
vnoremap <C-d> "+d

" format JSON command
com! FormatJSON %!python -m json.tool

" format for hex
com! FormatToHEX %!xxd
com! FormatFromHEX %!xxd -r

" save as sudo
com! SudoSave w !sudo tee %

