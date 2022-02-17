" --- VUNDLE SETTINGS ---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'faith/vim-go'							" Golang plugin
Plugin 'preservim/nerdtree'				" NERDTree
Plugin 'arcticicestudio/nord-vim'	" Nord Theme
" All of your Plugins must be added before the following line
call vundle#end()						" required
filetype plugin indent on		" required



" --- GENERAL SETTINGS ---
set number 
set nowrap
set tabstop=2
set shiftwidth=2
set showcmd

set ruler
set wildmenu
set lazyredraw
set showmatch

set laststatus=2
set showmode
set showcmd

colorscheme nord 

syntax on
set cursorline


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

au filetype go inoremap <buffer> . .<C-x><C-o>
