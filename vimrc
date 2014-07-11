" Hawmps vimrc, cheers to @Wolfy87 for inspriation
set nocompatible              " be iMproved, required
filetype off                  " required

" make sure vundle is properly installed. Follow instructions
" here: https://github.com/gmarik/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" tpopes Git wrapper
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Distinguished CS
Bundle 'Lokaltog/vim-distinguished'
"  Solarized
Bundle 'altercation/vim-colors-solarized'
"  Enhance JS syntax
Bundle 'jelera/vim-javascript-syntax' 
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put youo non-Plugin stuff after this line
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set laststatus=2
set confirm
set visualbell
set cmdheight=2
set number
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
let g:syntastic_check_on_open=1

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=4
set tabstop=4
map Y y$
" Keymapping to clear search highlights
nnoremap <C-L> :nohl<CR><C-L>
syntax on 
set background=dark
colorscheme solarized
set statusline=%<%F\ %y\ %{fugitive#statusline()}\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
" Custom key mappings
" Ctrl-C breaks a line. 
imap <C-c> <CR><Esc>O
filetype plugin on
set omnifunc=syntaxcomplete#Complete
