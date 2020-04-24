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
set expandtab
set tabstop=4
set laststatus=2

autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

"mappings

map <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-d> "+d
vnoremap <C-d> "+d

com! To tabonly
" format JSON command
com! FormatJSON %!python -m json.tool

" format for hex
com! FormatToHEX %!xxd
com! FormatFromHEX %!xxd -r

" save as sudo
com! SudoSave w !sudo tee %

