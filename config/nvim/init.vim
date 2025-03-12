
call plug#begin('~/.config/nvim/plugged/')

Plug 'bratpeki/truedark-vim'
Plug 'justinmk/vim-dirvish'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'

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
set mousemodel=extend
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
set shortmess=

syntax on

autocmd FileType netrw setl bufhidden=delete

let g:goyo_height = "75%"
let g:goyo_width  = "75%"
let g:python_recommended_style = 0

let mapleader = ","

" source $HOME/.config/nvim/init-imports/coc.vim

" For testing purposes
" source $HOME/Code/GitHub/truedark-vim/colors/truedark.vim

map <leader>hh :help<space>
map <leader>os :OmniSharp

map <silent><C-N> :enew<CR>
map <silent><C-Q> :q<CR>
map <silent><C-S> :w<CR>

map <silent><M-Down>  :resize -1<CR>
map <silent><M-Left>  :vertical resize -1<CR>
map <silent><M-Right> :vertical resize +1<CR>
map <silent><M-Up>    :resize +1<CR>

map <leader>mm :make<CR>
map <leader>mt :make todo<CR>

map <silent><leader>grc :e ~/.config/nvim/init.vim<CR>

map <silent><leader>nh :noh<CR>

map <silent><leader>pc :PlugClean<CR>
map <silent><leader>pi :PlugInstall<CR>
map <silent><leader>pu :PlugUpdate<CR>

map <silent><leader>te :tabe<CR>
map <silent><leader>tq :tabc<CR>

map <silent><leader>we :Dirvish<CR>
map <silent><leader>wf :Goyo<CR>
map <silent><leader>wt :terminal<CR>:setlocal nonumber norelativenumber<CR>

map <silent>ff :FZF<CR>

tnoremap <Esc> <C-\><C-n>

map <silent>ss :source %<cr>
