color koehler

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set incsearch
set autoindent
set wildmode=longest,list
set cc=80
syntax on

nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l

nnoremap <PageUp> :bn!<CR>
nnoremap <PageDown> :bp!<CR>
nnoremap <C-End> :bp\|bd #<CR>
