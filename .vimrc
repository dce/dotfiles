call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

syntax on

set guifont=Monaco:h12
set tabstop=2 " width of a tab
set shiftwidth=2 " width of shift (< and >)
set softtabstop=2 " width of expandtab
set smarttab " do the right thing
set expandtab " use spaces instead of tabs
set listchars=tab:▸\ ,eol:¬ " TextMate-style special chars

set number " line numbers
set hidden
set cursorline
set nowrap

" http://unix.stackexchange.com/a/76385
set backspace=indent,eol,start

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

set foldmethod=syntax
set foldlevelstart=20

set tags=tagfile

" keep tmp files in a safe place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

au BufRead,BufNewFile *.mobile.erb set filetype=html

autocmd BufRead,BufNewFile {*.markdown,*.md} set wrap linebreak spell

set background=dark
colorscheme gruvbox

hi CursorLine cterm=NONE

let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :FufFile<CR>
map <leader>b :FufBuffer<CR>
map <leader>t :CtrlP<CR>

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

" move by visual line rather than file line
nnoremap j gj
nnoremap k gk

" disable middle-click paste
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>


" ctrlp
let g:ctrlp_show_hidden = 1
set wildignore+=*/node_modules/*,*/public/system/*

" Command-T
" let CommandTMaxFiles = 20000
" let CommandTAlwaysShowDotFiles = 1
" let CommandTScanDotDirectories = 1
" set wildignore=.git,vendor,coverage,test/coverage,public/images,public/system,public/uploads

" hide scrollbars
set guioptions-=rL

" always enable airline
set laststatus=2
let g:airline_powerline_fonts=1
set guifont=Monaco\ for\ Powerline

command Md !markdown % | bcat
command Strip %s/\s\+$// | w
