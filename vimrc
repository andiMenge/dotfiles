" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()
" Colors {{{
syntax enable           " enable syntax processing
colorscheme molokai
" }}}
" Spaces & Tabs {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set backspace=2 " make backspace work like most other apps
" }}}

" Misc
set laststatus=2
