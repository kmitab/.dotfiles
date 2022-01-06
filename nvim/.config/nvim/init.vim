" plugin manager
call plug#begin()
Plug 'lifepillar/vim-solarized8'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'psf/black'
call plug#end()

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

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
set nu
