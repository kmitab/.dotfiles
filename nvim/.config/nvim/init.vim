" plugins
" psf/black - https://black.readthedocs.io/en/stable/integrations/editors.html#vim
call plug#begin()
Plug 'lifepillar/vim-solarized8'
Plug 'psf/black'
call plug#end()

" run black formatter on save
autocmd BufWritePre *.py execute ':Black'

" colors
set termguicolors
colorscheme solarized8

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" do not wrap lines
set nowrap

" whitespace handling
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" numbered rows
set nu

" encoding
set encoding=utf-8

" search
set incsearch
set autoindent

" completion, syntax
set wildmode=longest,list
syntax on

" netrw navigation
map <Left> -
map <Right> <CR>

" exit terminal mode
:tnoremap <Esc> <C-\><C-n>

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
