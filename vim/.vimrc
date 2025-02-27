
filetype off


set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')

" Plugins go here

Plug 'kien/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/vim-easy-align'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kevinw/pyflakes-vim'
Plug 'vim-scripts/supertab'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'wincent/command-t'
Plug 'Raimondi/delimitMate'
Plug 'docunext/closetag.vim'
Plug 'vim-scripts/a.vim'
Plug 'cohlin/vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dracula/vim'
Plug 'blueshirts/darcula'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'gosukiwi/vim-atom-dark'
Plug 'kamykn/dark-theme.vim'
Plug 'joshdick/onedark.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()


setlocal textwidth=79
setlocal foldmethod=expr

filetype plugin indent on

let g:solarized_termcolors=256
set background=dark

"colorscheme brogrammer
"colorscheme onedark
"colorscheme darktheme
"colorscheme atom-dark
"colorscheme dark
"colorscheme darcula
"colorscheme py-darcula
colorscheme solarized
"colorscheme xcode-default

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=r
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
" if exists("&relativenumber")
" 	set relativenumber
" 	au BufReadPost * set relativenumber
" endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
