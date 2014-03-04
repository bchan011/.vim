" setting up vundle
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
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'mbbill/undotree'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'SearchComplete'

"
" " non github repos

"  ...
"
filetype plugin indent on     " required!

" General Settings {
    set wildmenu  "Turn on wild menu
    set showcmd

    set hid " A buffer becomes hidden when it is abandoned

    set ignorecase " Ignore case when searching
    set smartcase " Smart about case when searching

    set hlsearch " Highlight search results
    set incsearch " Make search act like search in modern browers

    set lazyredraw " Don't redraw while executing macros

    set magic " For regular expressions

    set showmatch " Show matching brackets 

    set mat=2 " How many tenths of a second to blink 

    set encoding=utf8 " set utf8 as standard encoding

    set ffs=unix,dos,mac " Use Unix as the standard file type

    set nobackup " Turn backup off
    set nowb
    set noswapfile

    set path+=/usr/include/**,.,,

    set autoread " Set to auto read when a file is changed from the outside
    set autowrite " Save current file before moving on

    set ttimeoutlen=50 " there is a pause leaving insert mode

    set history=700 " Sets how many lines of history vim has to remember
" }

" Formatting {

    set smarttab
    set shiftwidth=4
    set tabstop=4

    set ai " auto indent
    set si " smart indent
    set nowrap " wrap lines

    set expandtab " use spaces instead of tabs

    set formatoptions=ro

    set backspace=eol,start,indent  " Configure backspace
    set whichwrap+=<,>,h,l

" }

" Vim UI {

    set noshowmode " get rid of the default mode indicator

    set novisualbell " use visual bell instead of beep

    set number " display line numbers on the left

    set splitbelow " splits go below w/focus
    set splitright " vsplits go right w/focus


    set ruler " Always current position

    set cmdheight=1 " Height of command bar

    set background=dark " color
    "let g:solarized_termcolors=256
    colorscheme solarized

    set laststatus=2

    set t_Co=256   " Force Vim into 246 color mode, to display airline colors
" }

" GVim GUI {
    set mouse=a " enable use of mouse

    set guioptions-=m " remove menubar
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove right scrollbar
" }

" Programming Settings {
    syntax enable " Enable syntax highlighting

    autocmd FileType c,cpp,cc :set cindent " set c indent style

" }

" Key (re)Mappings {
    let mapleader=',' 

    map <c-h> <c-w>h " easier moving in tabs and windows
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l

    "pressing \ss togle spell checking, in command mode
    map <leader>ss :setlocal spell!<cr>

" }

" Plugins {
    " airline {
        let g:airline_powerline_fonts = 1
        let g:airline_detect_whitespace = 0
        let g:airline_theme = "zenburn"
    " }

    " NerdTree {
        map <C-n> :NERDTreeToggle<CR>
    " }

    " Undotree {
        nnoremap <leader>u :UndotreeToggle<CR>
        let g:undotree_WindowLayout = 3
    " }

    " Supertab {
        let g:SuperTabDefaultCompletionType = "context"
    " }

    " Tagbar {
        let g:tagbar_usearrows = 1
        nnoremap <leader>l :TagbarToggle<CR>
    " }

    " CtrlP {
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
    " }
" }



" Functions {
    "return to last edit position when opening files
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ 	exe "normal! g`\"" |
        \ endif

    " save undo changes
    if has('persistent_undo') && exists("&undodir")
                set undodir=$HOME/.vim/undo/            " where to store undofiles
                set undofile                            " enable undofile
                set undolevels=500                      " max undos stored
                set undoreload=10000                    " buffer stored undos
    endif
" }

