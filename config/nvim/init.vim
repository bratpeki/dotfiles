
source /home/peki/.config/nvim/init-imports/coc.vim

call plug#begin('~/.config/nvim/plugged/')

Plug 'OmniSharp/omnisharp-vim'
Plug 'bratpeki/truedark-vim'
Plug 'habamax/vim-godot'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-dirvish'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'sickill/vim-monokai'

call plug#end()

filetype plugin indent on
filetype off

color truedark

set statusline=%#StatusLine#
set statusline+=\ 
set statusline+=%f%m%=%y
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}]
set statusline+=\ [%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

set backspace=indent,eol,start
set belloff=all
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set mouse=a
set nowrap
set nu rnu
set path+=**
set ruler
set shiftwidth=4
set softtabstop=4
set splitright
set tabstop=4
set termguicolors
set wildmenu

syntax on

autocmd FileType netrw setl bufhidden=delete

" ALE Fixers and Linters installed via pip
" let g:ale_fixers = {'*': [], 'python': ['black']}
" let g:ale_linters = {'*': [], 'python': ['flake8']}
let g:goyo_height = "75%"
let g:goyo_width  = "75%"
let g:python_recommended_style = 0

map ,hh :help<space>

map ,os :OmniSharp

map <silent>,clp :!pdflatex %<CR>

map <silent>,gc :e ~/.config/nvim/init.vim<CR>

map <silent>,nh :noh<CR>

map <silent>,pc :PlugClean<CR>
map <silent>,pi :PlugInstall<CR>
map <silent>,pu :PlugUpdate<CR>

map <silent>,te :tabe<CR>
map <silent>,tq :tabc<CR>

map <silent>,we :Dirvish<CR>
map <silent>,wf :Goyo<CR>
map <silent>,wt :terminal<CR>:setlocal nonumber norelativenumber<CR>

map <silent><C-N> :enew<CR>
map <silent><C-Q> :q<CR>
map <silent><C-S> :w<CR>

map <silent><M-Down> :resize -1<CR>
map <silent><M-Left> :vertical resize -1<CR>
map <silent><M-Right> :vertical resize +1<CR>
map <silent><M-Up> :resize +1<CR>

tnoremap <Esc> <C-\><C-n>

