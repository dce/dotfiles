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

au BufRead,BufNewFile *.mobile.erb set filetype=html

autocmd BufRead,BufNewFile {*.markdown,*.md} set wrap linebreak spell

set background=dark
colorscheme solarized

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

" disable middle-click paste
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

" Command-T
let CommandTMaxFiles = 20000
let CommandTAlwaysShowDotFiles = 1
let CommandTScanDotDirectories = 1
set wildignore=.git,vendor,coverage,test/coverage,public/images,public/system

command Md !markdown % | bcat
command Strip %s/\s\+$// | w
