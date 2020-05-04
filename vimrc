set nocompatible  " required
filetype off      " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'hashivim/vim-terraform'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ekalinin/Dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()          " required
filetype plugin indent on  " required



" General
set encoding=utf-8
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
colorscheme default
syntax on

" Split position
set splitbelow
set splitright

" Split navigation
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Move in insert mode
"inoremap <C-H> <Left>
"inoremap <C-J> <Down>
"inoremap <C-K> <Up>
"inoremap <C-L> <Right>

" Enable folding
set foldmethod=indent
set foldlevel=99


" Python coding style (PEP8)
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1

" Syntax plugins
let python_highlight_all=1

" NERDTree
map <C-@> :NERDTreeTabsToggle <CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] " Ignore .pyc files

" Powerline
set laststatus=2
set t_Co=256

" Per mode cursor shape
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

" Visual mode color
highlight Visual cterm=none ctermfg=none ctermbg=239

