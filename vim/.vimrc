call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

call plug#end()

syntax enable 
colorscheme monokai
set number
set hlsearch
set incsearch
set expandtab
set tabstop=4
set laststatus=2
set encoding=utf-8

autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab

"mappings

map <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-d> "+d
vnoremap <C-d> "+d

com! TO tabonly
" format JSON command
com! FormatJSON %!python -m json.tool --no-ensure-ascii  

" format for hex
com! FormatToHEX %!xxd
com! FormatFromHEX %!xxd -r
com! FoldJSON set filetype=json | syntax on | set foldmethod=syntax

" save as sudo
com! SudoSave w !sudo tee %

