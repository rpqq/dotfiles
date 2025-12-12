" Sets

syntax on " syntax highlighting

set showcmd " bottom right show command trigger
set ruler " n,nn bottom right cursor location
set guicursor=
set scrolloff=8
set number 
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set laststatus=2 " Always show the status line at the bottom, even if you only have one window open.
set backspace=indent,eol,start " backspace over anything.
set hidden " Prevent you from forgetting unsaved changes
set incsearch " Enable searching as you type, rather than waiting till you press enter.
set noerrorbells visualbell t_vb= " disable audio bell
set mouse+=a " Mouse support

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

" color schema
set termguicolors 
let ayucolor="dark"
colorscheme ayu


" Remaps 

let mapleader = " "
nnoremap <leader><CR> :so ~/.vimrc<CR>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR> 

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

nnoremap <leader>p o<esc>P<CR>
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"yG
