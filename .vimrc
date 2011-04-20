call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set guifont=Monaco:h12
set tabstop=2 " width of a tab
set shiftwidth=2 " width of shift (< and >)
set softtabstop=2 " width of expandtab
set smarttab " do the right thing
set expandtab " use spaces instead of tabs

set number " line numbers
set hidden
set cursorline
set nowrap

set foldmethod=syntax
set foldlevelstart=20

set tags=tagfile

" keep tmp files in a safe place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

colorscheme github

let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :FufFile<CR>
map <leader>b :FufBuffer<CR>

map <F2> :set nowrap!<CR>
map <F3> :set linebreak!<CR>
map <F4> :set list!<CR>

" disable arrow keys
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

command Md !markdown % | bcat
command Strip %s/\s\+$// | w
