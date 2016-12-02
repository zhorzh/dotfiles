""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
let g:rehash256 = 1
let loaded_matchparen = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gitgutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * set updatetime=4000
let g:gitgutter_sign_column_always = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable streak plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fast escape
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=1000 ttimeoutlen=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" programming language related settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype python setlocal shiftwidth=4 softtabstop=4 tabstop=4
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype html setlocal shiftwidth=2 softtabstop=2 tabstop=2

set textwidth=120  " lines longer than 79 columns will be broken
set expandtab     " insert spaces when hitting TABs
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set number
set hlsearch
set paste
syntax on
autocmd BufWritePost *.py call Flake8()

let g:user_emmet_expandabbr_key='yy'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

set hidden
set guicursor=a:blinkon0 
