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

colo github

let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>f :FufFile<CR>
map <leader>b :FufBuffer<CR>
map <F2> :set nowrap!<CR>

command Md !markdown % | bcat
