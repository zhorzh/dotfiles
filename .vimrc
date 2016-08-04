""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
set encoding=utf-8
" Vundle plugin manager
Bundle 'gmarik/vundle'
" color scheme

" Bundle 'tomasr/molokai'
" frontend
Plugin 'mattn/emmet-vim'
Plugin 'jelera/vim-javascript-syntax'
" python
Bundle 'mitsuhiko/vim-python-combined'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'nvie/vim-flake8'
"Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
" status line
Bundle 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'
" navigation
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree' 
Bundle 'justinmk/vim-sneak'
Bundle 'rhysd/clever-f.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/unite.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'ervandew/supertab'
Bundle 'terryma/vim-multiple-cursors'
" git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'suan/vim-instant-markdown'
" clojure
Bundle 'tpope/vim-fireplace'

filetype plugin on
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme molokai
let g:rehash256 = 1
let loaded_matchparen = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tmux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmuxline_preset = {
    \'a'       : '#H',
    \'b'       : '',
    \'c'       : '',
    \'win'     : '#I #W',
    \'cwin'    : '#I #W',
    \'x'       : '',
    \'y'       : '%a',
    \'z'       : '%R',
    \'options' : {'status-justify' : 'left'}}
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gitgutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * set updatetime=4000
let g:gitgutter_sign_column_always = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore = ['\.pyc$']
set wildignore=*.swp,*.pyc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable streak plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fast escape
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=1000 ttimeoutlen=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python related settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set textwidth=120  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set number
set hlsearch
syntax on
autocmd BufWritePost *.py call Flake8()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F2> :NERDTreeFind<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
nmap <F8> :Gstatus<CR>
nmap <F12> :BundleInstall<CR>

nmap <C-_> :Commentary<CR> 
vmap <C-_> :Commentary<CR> 
map <C-x> <ESC>:x<CR>
autocmd FileType apache set commentstring=#\ %s

let g:user_emmet_expandabbr_key=','

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

map <c-k> <C-w><Up>
map <c-j> <C-w><Down>
map <c-l> <C-w><Right>
map <c-h> <C-w><Left>

set hidden
nmap <C-t> :enew<cr>
nmap <tab> :bnext<CR>
nmap <s-tab> :bprevious<CR>
nmap <c-e> :bp <BAR> bd #<CR>

set guicursor=a:blinkon0 
