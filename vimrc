set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" 
" original repos on github
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'

" " Github repos of the user 'vim-scripts'
" " => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'
"
" " non github repos
Bundle 'git://git.wincent.com/command-t.git'
"  ...
"
filetype plugin indent on     " required!



"Enable syntax highlighting
syntax enable

"color
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

"Sets how many lines of history vim has to remember
set history=700

"Set to auto read when a file is changed from the outside
set autoread

"Save current file before moving on
set autowrite

"Turn on wild menu
set wildmenu
set showcmd

"Always current position
set ruler

"Height of command bar
set cmdheight=2

"A buffer becomes hidden when it is abandoned
set hid

"Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"Smart about case when searching
set smartcase

"Highlight search results
set hlsearch

"toggle highlight with esc

"Make search act like search in modern browers
set incsearch

"Don't redraw while executing macros
set lazyredraw

"For regular expressions
set magic

"Show matching brackets 
set showmatch
"How many tenths of a second to blink 
set mat=2



"set utf8 as standard encoding
set encoding=utf8

"Use Unix as the standard file type
set ffs=unix,dos,mac

"Turn backup off
set nobackup
set nowb
set noswapfile

"use spaces instead of tabs
"set expandtab
set noexpandtab

set smarttab
"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "auto indent
set si "smart indent
set wrap "wrap lines

"Map <space> to / (search) and Ctrl-<space> to ? (backwards search)
map <space> :noh<cr>
map <c-space> ?

"enable use of mouse
set mouse=a

"use visual bell instead of beep
set visualbell

"display line numbers on the left
set number

"set c indent style
filetype on
autocmd FileType c,cpp,cc :set cindent

set formatoptions=ro

"pressing \ss togle spell checking, in command mode
map <leader>ss :setlocal spell!<cr>


"return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif

"Abbreviations
ab #i #include
ab #d #define
ab #b /**************************************
ab #e  **************************************/

"Word completion
set ignorecase

map <C-n> :NERDTreeToggle<CR>

set path+=/usr/include/**,.,,
