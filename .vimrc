call pathogen#infect()
syntax on
syntax enable

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set list

set gfn=Inconsolata:h16

set incsearch
set hlsearch
set ignorecase

" allow changing buffers without saving
set hidden

set nowrap
set number

set lazyredraw
set ruler
set autoread " auto read updates to file from outside vim

" pastetoggle
set pastetoggle=<F5>
"
" highlight the current line
set cursorline
"
" make backspace act normal (can be issue in some versions)
set backspace=2

filetype plugin indent on

set background=dark
colorscheme solarized

" Fuzzy Finder
let mapleader="\\"

" fuzzy finder mapping
map <leader>n :FufFile **/<CR>

" NERDTree Mappings
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <leader>l :NERDTreeFind<CR>
