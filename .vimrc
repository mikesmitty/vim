" Pretty colors
syntax on
set bg=dark
set hlsearch
"colorscheme solarized
"colorscheme colorsbox-steighties
colorscheme buddy

" Let there be SEARCH
set incsearch " incremental search
set ignorecase
set smartcase " capital letters = case sensitive

" Tab indentation
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Enable folding functions et. al
setlocal foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent

" Enable special settings for puppet manifests
autocmd FileType puppet setlocal shiftwidth=2 tabstop=2

" Set default paste buffer to the system clipboard
"set clipboard^=unnamed

" Set bash-like tab-completion
set wildmode=longest,list,full

" Set up save-and-run hotkey
map <F5> <Esc>:w<CR>:!%:p<CR>

" pathogen settings
execute pathogen#infect()
