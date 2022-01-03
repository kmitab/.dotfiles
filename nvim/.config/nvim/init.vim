" plugin manager
call plug#begin()
Plug 'lifepillar/vim-solarized8'
call plug#end()

" colors
set termguicolors
colorscheme solarized8

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" no wrap
set nowrap

" search
set incsearch
set autoindent

" misc
set wildmode=longest,list
syntax on

" netrw
map <Left> -
nnoremap <Right> <Plug>NetrwReturn

" switching panes
nnoremap <C-Up> <C-W>k
nnoremap <C-Down> <C-W>j
nnoremap <C-Left> <C-W>h
nnoremap <C-Right> <C-W>l

" buffer mappings
nnoremap <PageUp> :bn!<CR>
nnoremap <PageDown> :bp!<CR>
nnoremap <C-End> :bp\|bd #<CR>

" fat fingers
cabbrev W w
