" Pretty colors
syntax on
set bg=dark
set hlsearch
"colorscheme solarized
"colorscheme colorsbox-steighties
colorscheme buddy

" Let there be SEARCH
set incsearch " incremental search
set noignorecase
"set ignorecase
"set smartcase " capital letters = case sensitive

" Set max open tabs
set tabpagemax=25

" Tab indentation
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Enable default folding settings
setlocal foldmethod=syntax
set foldlevelstart=10

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" Puppet and yaml settings
autocmd FileType puppet setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" Python settings
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python autocmd BufWrite <buffer> :Autoformat

" Set default paste buffer to the system clipboard
"set clipboard^=unnamed

" Set bash-like tab-completion
set wildmode=longest,list,full

" Set up save-and-run hotkey
map <F5> <Esc>:w<CR>:!%:p<CR>

" Disable YouCompleteMe
let g:loaded_youcompleteme = 1

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Start nerdtree with vim
"autocmd vimenter * NERDTree

" Map ctrl+n to turn nerdtree on/off
map <C-n> :NERDTreeToggle<CR>

" Close if nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" pathogen settings
execute pathogen#infect()
