set nocompatible
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'szw/vim-g'
Plugin 'scrooloose/nerdcommenter'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" Color scheme
syntax on
set background=dark
colorscheme solarized

" Tab Sizes
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Makefiles must use tabs
let _filename = expand("%:t")
if _filename =~ "Makefile" || _filename =~ "makefile" || _filename =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif

" Automatic Indenting
set smarttab
set autoindent

" Set undo directory
set undofile
set undodir=$HOME/.vim/undo-dir

" Turn on line numbers
set number

let g:airline_solarized_bg='dark'

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Keybinds
map <Tab> <C-^>

