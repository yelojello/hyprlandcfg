
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("yelo")
require("yelo.packer")

vim.cmd([[

set nocompatible

filetype on
filetype plugin on


syntax on
set noswapfile
set updatetime=100
set termguicolors
set backspace=start,eol,indent
set synmaxcol=119
set scrolloff=7
set nu
set wildmenu
set showmatch
set title
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set ignorecase
set smartcase
set nobackup
set cursorline
set cursorcolumn
set incsearch
set hlsearch
set splitbelow
set splitright
set mouse=a
set shortmess=a
set foldnestmax=99
set ruler
set showcmd
set noerrorbells

]])
