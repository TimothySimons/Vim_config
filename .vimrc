set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'morhetz/gruvbox'
Plugin 'mbbill/undotree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"--------------------- Tim's additions ----------------------
" Text
set encoding=utf-8

" Visual
colorscheme gruvbox
highlight ColorColumn ctermbg=7 guibg=lightgrey
set background=dark
set colorcolumn=80
set noerrorbells
set nowrap
set nu

" Indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Leader key
let mapleader = " "
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>u :UndotreeShow<CR>

" For bluetooth keyboard

