"tab line numbering
set autoindent
set expandtab
set ts=4 sw=4 sts=4
set nu
set cursorline
set hidden
set number
set ruler


"Syntax Hieghligting settings
autocmd! BufNewFile,BufRead *.ino setlocal ft=cpp
let g:syntastic_arduino_checkers = ['gcc','ycm']
let g:syntastic_cpp_checkers = ['gcc','ycm']
let g:syntastic_ino_checkers = ['gcc','ycm']
let g:syntastic_cpp_check_header = 1
syntax enable

"switch between tabs and buffers
nmap <C-tab> :tabn<cr>
nmap <C-S-tab> :tabp<cr>
nmap <C-n> :bnext<cr> nmap <C-p> :bprev<cr>

"navigation
nmap j gj
nmap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"insert mode settings
autocmd InsertEnter,InsertLeave * set cul!
hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

"windows backspace settings
set backspace=2

set backspace=indent,eol,start

"search files and buffers
nmap ; :CtrlPBuffer<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|CMakeFiles|CMakeCache\.txt$|cmake_install\.cmake$|bin/|build/'
":let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 'ra' 
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

"nerdtree
nmap \e :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif

"search settings
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

syntax enable
"set color scheme
colorscheme gruvbox
set background=dark

if has("gui_running")
    set guifont=Inconsolata\ 14
else
    set termguicolors
    let g:gruvbox_italic=1
endif

syntax on
filetype plugin indent on

set tw=100
nnoremap ,cd :cd %:p:h<CR>

"for full screen bug in ubuntu with gvim
set guioptions-=L

"allow buffers
set hidden
set tags=./tags;/

" search and replace visual mode text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

map <F1> :e %:p:s,.hh$,.X123X,:s,.cc$,.hh,:s,.X123X$,.cc,<CR>

