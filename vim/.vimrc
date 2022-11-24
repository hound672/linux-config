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

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

map <C-t> :NERDTreeToggle<CR>
" xorg
nnoremap <C-y> "+y
vnoremap <C-y> "+y

" wayland
" vnoremap <C-Y> :call system("wl-copy --trim-newline", @*)<cr>:call system("wl-copy -p --trim-newline", @*)<cr>

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


