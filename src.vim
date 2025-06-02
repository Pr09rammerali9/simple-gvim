" ============================================================================
" Custom .vimrc Configuration
" ============================================================================
                                                  " --- General Settings ---
set nocompatible          " Be iMproved, required for many plugins and modern features              filetype plugin indent on " Enable file type detection, plugins, and indenting
syntax on                 " **THIS IS THE KEY FOR SYNTAX HIGHLIGHTING**
set encoding=utf-8        " Set file encoding to UTF-8                                              set autoread              " Automatically re-read file if it's changed outside Vim
                                                  " --- Appearance ---
set number                " Show absolute line numbers                                              set relativenumber        " Show relative line numbers (current line is 0, helpful for motions)     set cursorline            " Highlight the current line
set showmatch             " Show matching brackets
set showcmd               " Show (partial) command in the status line
set ruler                 " Show current position in status line (row, col)

" Enable true colors for better theme display (if your terminal supports it)
" This is usually for terminal Vim, but also good for gVim themes.
set termguicolors

" --- Indentation ---
set expandtab             " Use spaces instead of tabs
set tabstop=4             " Number of spaces a tab counts for
set shiftwidth=4          " Number of spaces for (auto)indent
set autoindent            " Auto indent new lines
set smartindent           " More intelligent auto-indenting
set copyindent            " Copy the previous indentation on autoindenting

" --- Searching ---
set incsearch             " Highlight matches as you type
set hlsearch              " Highlight all matches
set ignorecase            " Ignore case in search patterns
set smartcase             " Override 'ignorecase' if search pattern contains uppercase

" Map <Leader>n to clear search highlighting.
" Define your <Leader> key first (Spacebar is popular).
let mapleader = " "
nnoremap <leader>n :nohlsearch<CR>

" --- Mouse Support (for GVim and terminal Vim) ---
set mouse=a               " Enable mouse in all modes (for selection, scrolling)

" --- Clipboard Integration (for system clipboard) ---
" This makes copy/paste work with your system clipboard (Ctrl+C, Ctrl+V outside Vim)
set clipboard+=unnamedplus

" --- Status Line (like Micro's bottom bar) ---
set laststatus=2          " Always show the status line

" --- Colorscheme ---
" Set a default colorscheme. 'desert' is a classic, readable option.
" Many other themes are built-in or can be installed later.
colorscheme desert
" You can also try: colorscheme industry, colorscheme blue, colorscheme pablo
set background=dark       " Or 'light' depending on the colorscheme

" --- Quality of Life Additions ---
set backspace=indent,eol,start " Allow backspacing over everything in Insert mode
set undofile                     " Enable persistent undo
set undodir=~/.vim/undodir       " Directory to store undo files (create this directory: mkdir -p ~/.vim/undodir)
set directory=~/.vim/swapfiles// " Directory to store swap files (create this directory: mkdir -p ~/.vim/swapfiles)
set scrolloff=8                  " Keep 8 lines above/below cursor when scrolling
set visualbell                   " Use a visual flash instead of an audible beep
set noerrorbells                 " Disable audible error bells (redundant with visualbell but good for clarity)
set ttyfast                      " For faster redrawing, useful in some terminals
