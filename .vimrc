execute pathogen#infect()
set tabstop=2
syntax enable
" colorscheme solarized 
colorscheme monokai
" set guifont=Monaco\ 12
set shiftwidth=2
set backspace=2
filetype plugin indent on
set t_Co=256 
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
let g:javascript_plugin_jsdoc = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set number
" set relativenumber
set incsearch
set hlsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }
set noshowmode
set laststatus=2
set expandtab
set softtabstop=2
" set clipboard=unnamed
set clipboard=unnamedplus 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/*,*/target/*,*/node_modules/*
nmap <F8> :TagbarToggle<CR>
map <F5> :!groovy %<CR>
let g:tagbar_ctags_bin = "/opt/ctags-5.8/ctags"
set encoding=utf-8
set fileencoding=utf-8
set paste
