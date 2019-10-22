call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'

call plug#end()

set tabstop=2 " width of a tab
set shiftwidth=2 " width of shift (< and >)
set softtabstop=2 " width of expandtab
set smarttab " do the right thing
set expandtab " use spaces instead of tabs
set listchars=tab:▸\ ,eol:¬ " TextMate-style special chars

autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4

set number " line numbers
set hidden
set cursorline
set nowrap

" don't underline current line
hi CursorLine cterm=NONE

" http://unix.stackexchange.com/a/76385
set backspace=indent,eol,start

" keep tmp files in a safe place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>D :NERDTreeFind<CR>
map <leader>b :Buffers<CR>
map <leader>f :GFiles<CR>
map <leader>t :GFiles<CR>

" disable arrow keys
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

" ctrlp
let g:ctrlp_show_hidden = 1
set wildignore+=*/node_modules/*,*/public/system/*,*/tmp/*

command Strip %s/\s\+$// | w
