" Plugins
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'jvirtanen/vim-hcl'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()  


" Audio/Visual
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
colorscheme gruvbox
highlight ColorColumn ctermbg=7 guibg=lightgrey
set background=dark
set colorcolumn=80
set scrolloff=8
set nowrap
set rnu
set nu


" Enable folding
set foldmethod=indent
set foldlevel=99


" Indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent


" Encoding
set encoding=utf-8


" Search 
set incsearch


" Leader Key
let mapleader = " "


" Movement
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>


" Fuzzy Finder 
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fg :Rg<cr>
set rtp+=~/.fzf


" Git
nnoremap <leader>gb :GBranches<cr>
nnoremap <leader>gl :vert Git log<cr>
nnoremap <leader>gs :Git<cr> 


" Nerdtree 
function! NERDTreeToggleFind()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        :NERDTreeToggle
    else
        if @% == ""
            :NERDTreeToggle
            :wincmd l
        else
            :NERDTreeToggle
            :wincmd l
            :NERDTreeFind
            :wincmd l
        endif  
    endif
endfunction

nnoremap <leader>n :call NERDTreeToggleFind()<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
